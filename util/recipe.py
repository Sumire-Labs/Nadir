'''
RECIPES
'''

import random
import re
import shutil
from copy import copy
from pathlib import Path

import item

RECIPE_IDS = []
VISIBLE_RECIPES = []
RECIPES = {}
RECIPE_GROUPS = {}
VIEW_SLOT = [1, 2, 3, 10, 11, 12, 19, 20, 21, 18]
DIR = Path(__file__).resolve()
DATAPACK_PATH = DIR.parent.parent
RECIPE_PATH = DATAPACK_PATH / 'data/gha.generated/function/recipe'
RECIPE_PAGE_PATH = RECIPE_PATH / '_page'
REG_PATH = RECIPE_PATH / 'registry.mcfunction'

shutil.rmtree(RECIPE_PATH, ignore_errors=True)
RECIPE_PATH.mkdir()
RECIPE_PAGE_PATH.mkdir()

with open(REG_PATH, 'w', encoding='UTF-8') as f:
    f.write(f'')

def random_recipe():
    items = []
    result = ''
    for i, j in enumerate(random.choices(list(item.ITEMS.keys()), k=10)):
        if i == 9:
            result = j
        else:
            items.append(j)
    add_shaped(result, items)

def blank_item(slot: int):
    return {
        'Slot': slot,
        'id': 'command_block',
        'components': {
            'item_model': 'air',
            'custom_data': {
                'r': True
            },
            'tooltip_display': {
                'hide_tooltip': True
            }
        }
    }

def blank_button(slot: int):
    return {
        'Slot': slot,
        'id': 'command_block',
        'components': {
            'item_model': 'gha:gui/blank',
            'custom_data': {
                'r': True
            },
            'tooltip_display': {
                'hide_tooltip': True
            }
        }
    }

def shifted_grids(grid):

    positions = [
        (i % 3, i // 3)
        for i, value in enumerate(grid)
        if value
    ]

    min_x = min(x for x, y in positions)
    max_x = max(x for x, y in positions)
    min_y = min(y for x, y in positions)
    max_y = max(y for x, y in positions)

    results = []
    for dy in range(-min_y, 3 - max_y):
        for dx in range(-min_x, 3 - max_x):

            new_grid = [''] * 9

            for i, value in enumerate(grid):
                if not value:
                    continue

                x = i % 3
                y = i // 3

                new_x = x + dx
                new_y = y + dy

                new_index = new_y * 3 + new_x
                new_grid[new_index] = value

            results.append(new_grid)

    return results

def add_shaped(result: tuple | str, ingredient: list[tuple | str | None], group: str | None = None, mirrored: bool = True, shifted: bool = True, visible: bool = True, id: str | None = None):

    result_count = 1
    if isinstance(result, tuple):
        result_id = result[0]
        if len(result) >= 2:
            result_count = result[1]
    else:
        r = copy(result)
        if re.match(r'\d', r) is not None:
            c, r = r.split()
            result_count = int(c[:-1])
        result_id = r

    if id is None:
        id = f'r{len(RECIPE_IDS)}'
        
    if visible:
        VISIBLE_RECIPES.append(id)
    else:
        group = None
    RECIPE_IDS.append(id)

    if group:
        if group in RECIPE_GROUPS:
            VISIBLE_RECIPES.remove(id)
            RECIPE_GROUPS[group].append(id)
        else:
            RECIPE_GROUPS[group] = [id]

    shape_raw = {}
    item_list = []
    view_list = []

    for i in range(26):
        view_list.append(blank_item(i))
    view_list[18] = {
        'Slot': 18,
        'id': 'command_block',
        'components': {
            'item_model': 'gha:gui/recipe',
            'custom_data': {
                'r': True
            },
            'tooltip_display': {
                'hide_tooltip': True
            }
        }
    }
    view_list.append({
        'Slot': 26,
        'id': 'command_block',
        'components': {
            'item_model': 'air',
            'custom_data': {
                'r': True
            },
            'item_name': {
                'translate': 'tooltip.gha.page.back',
                'color': 'red'
            }
        }
    })
    view_list[15] = item.sprite(15, result_id, result_count)

    check_text = ''
    m = 0
    n = 0
    for i in ingredient:
        if not i:
            n += 1
            continue
        
        item_count = 1
        if isinstance(i, tuple):
            item_id = i[0]
            if len(i) >= 2:
                item_count = i[1]
        else:
            if re.match(r'\d', i) is not None:
                c, i = i.split()
                item_count = int(c[:-1])
            item_id = i
        
        item_list.append(item.ingredient(n, item_id))
        view_list[VIEW_SLOT[n]] = item.sprite(VIEW_SLOT[n], item_id, item_count)
        check_text += f'execute store result score @s gha.craft.{m} run data get block ~ ~ ~ Items[{m}].count\nscoreboard players remove @s gha.craft.{m} {item_count}\nexecute if score @s gha.craft.{m} matches ..-1 run return fail\n'

        m += 1
        n += 1
    
    for i in range(9 - m):
        item_list.append(m + i)
    
    shape_raw = {
        'r': id,
        'i': item_list
    }

    shape_text = re.sub(r'(\'Slot\': \d)', r'\1b', str(shape_raw))
    
    with open(REG_PATH, 'a', encoding='UTF-8') as f:
        f.write(f'data modify storage gha:recipe_shape shaped append value {shape_text}\n')

    result_raw = item.stack(result_id, result_count)
    item_display = item.display(result_id)
    item_entity = {'Item': result_raw}

    check_text += f'return run summon item_display ~ ~0.7 ~ {item_display}'

    RECIPES[id] = [result_id, result_count, view_list, False]

    path = RECIPE_PATH.joinpath(id)
    path.mkdir()

    with open(path / 'craft.mcfunction', 'w', encoding='UTF-8') as f:
        f.write(f'summon item ~ ~ ~ {item_entity}')

    with open(path / 'check.mcfunction', 'w', encoding='UTF-8') as f:
        f.write(check_text)

    if mirrored:
        mirrored_ingredient = [
            ingredient[2], ingredient[1], ingredient[0],
            ingredient[5], ingredient[4], ingredient[3],
            ingredient[8], ingredient[7], ingredient[6]
        ]
        if mirrored_ingredient != ingredient:
            add_shaped(result, mirrored_ingredient, None, False, shifted, False)

    if shifted:
        for i in shifted_grids(ingredient):
            if i != ingredient:
                add_shaped(result, i, None, False, False, False)

def add_shapeless(result: tuple | str, ingredient: list[tuple | str | None], group: str | None = None, visible: bool = True, id: str | None = None):

    result_count = 1
    if isinstance(result, tuple):
        result_id = result[0]
        if len(result) >= 2:
            result_count = result[1]
    else:
        if re.match(r'\d', result) is not None:
            c, result = result.split()
            result_count = int(c[:-1])
        result_id = result

    if id is None:
        id = f'r{len(RECIPE_IDS)}'
        
    if visible:
        VISIBLE_RECIPES.append(id)
    else:
        group = None
    RECIPE_IDS.append(id)

    if group:
        if group in RECIPE_GROUPS:
            VISIBLE_RECIPES.remove(id)
            RECIPE_GROUPS[group].append(id)
        else:
            RECIPE_GROUPS[group] = [id]
        
    item_list = []
    view_list = []

    for i in range(26):
        view_list.append(blank_item(i))
    view_list[6] = {
        'Slot': 6,
        'id': 'command_block',
        'components': {
            'item_model': 'air',
            'custom_data': {
                'r': True
            },
            'item_name': {
                'translate': 'tooltip.gha.shapeless_recipe',
                'color': 'white'
            }
        }
    }
    view_list[18] = {
        'Slot': 18,
        'id': 'command_block',
        'components': {
            'item_model': 'gha:gui/recipe_shapeless',
            'custom_data': {
                'r': True
            },
            'tooltip_display': {
                'hide_tooltip': True
            }
        }
    }
    view_list.append({
        'Slot': 26,
        'id': 'command_block',
        'components': {
            'item_model': 'air',
            'custom_data': {
                'r': True
            },
            'item_name': {
                'translate': 'tooltip.gha.page.back',
                'color': 'red'
            }
        }
    })
    view_list[15] = item.sprite(15, result_id, result_count)

    check_text = ''
    duplicated_item_list = []
    unique_item_list = []
    unique_count_list = []
    duplicated_count_list = []
    n = 0
    m = 0
    for i in ingredient:
        if i == None or len(i) == 0:
            n += 1
            continue
        
        item_count = 1
        if isinstance(i, tuple):
            item_id = i[0]
            if len(i) >= 2:
                item_count = i[1]
        else:
            if re.match(r'\d', i) is not None:
                c, i = i.split()
                item_count = int(c[:-1])
            item_id = i

        ingr = item.shapeless_ingredient(item_id)
        if ingr in duplicated_item_list:
            duplicated_count_list[duplicated_item_list.index(ingr)].append(item_count)
        else:
            if ingr in unique_item_list:
                duplicated_count_list.append([item_count])
                duplicated_item_list.append(ingr)
                duplicated_count_list[-1].append(unique_count_list.pop(unique_item_list.index(ingr)))
                unique_item_list.remove(ingr)
            else:
                unique_item_list.append(ingr)
                unique_count_list.append(item_count)
        item_list.append(ingr)

        view_list[VIEW_SLOT[n]] = item.sprite(VIEW_SLOT[n], item_id, item_count)
        m += 1
        n += 1

    for i in range(9 - m):
        item_list.append(m + i)

    unique = 0
    for i, j in zip(unique_item_list, unique_count_list):
        check_text += f'data modify storage gha:temp temp.craft.c append from block ~ ~ ~ Items[{i}]\nexecute store result score $gha:temp.craft gha.craft.{unique} run data get storage gha:temp temp.craft.c[-1].count\nscoreboard players remove $gha:temp.craft gha.craft.{unique} {j}\nexecute if score $gha:temp.craft gha.craft.{unique} matches ..-1 run return fail\n'
        unique += 1

    path = RECIPE_PATH.joinpath(id)
    path.mkdir()
    m = 0
    x = unique
    for item_data, count_list in zip(duplicated_item_list, duplicated_count_list):
        count_list = sorted(count_list, reverse=True)
        n = 0

        dup_check_text = f'data remove storage gha:temp temp.craft.d\ndata modify storage gha:temp temp.craft.d append from block ~ ~ ~ Items[{item_data}]\n'
        for item_count in count_list:
            dup_check2_text = ''
            for l in range(len(count_list)):

                with open(path / f'check_{m}{n}{l}.mcfunction', 'w', encoding='UTF-8') as f:
                    f.write(f'execute store result score $gha:temp.craft gha.craft.{x} run data get storage gha:temp temp.craft.d[{l}].count\nscoreboard players remove $gha:temp.craft gha.craft.{x} {item_count}\nexecute if score $gha:temp.craft gha.craft.{x} matches ..-1 run return fail\ndata modify storage gha:temp temp.craft.c append from storage gha:temp temp.craft.d[{l}]\nreturn run data remove storage gha:temp temp.craft.d[{l}]')

                dup_check2_text += f'execute if function gha.generated:recipe/{id}/check_{m}{n}{l} run return 1\n'

            with open(path / f'check_{m}{n}.mcfunction', 'w', encoding='UTF-8') as f:
                f.write(dup_check2_text)

            dup_check_text += f'execute unless function gha.generated:recipe/{id}/check_{m}{n} run return fail\n'
            x += 1
            n += 1

        dup_check_text += 'return 1'
        with open(path / f'check_{m}.mcfunction', 'w', encoding='UTF-8') as f:
            f.write(dup_check_text)
        check_text += f'execute unless function gha.generated:recipe/{id}/check_{m} run return fail\n'
        m += 1


    result_raw = item.stack(result_id, result_count)

    RECIPES[id] = [result_id, result_count, view_list, True]

    item_entity = {'Item': result_raw}
    item_display = item.display(result_id)
    
    ingredient_raw = {
        'r': id,
        'i': item_list
    }

    with open(REG_PATH, 'a', encoding='UTF-8') as f:
        f.write(f'data modify storage gha:recipe_shape shapeless append value {ingredient_raw}\n')

    check_text += f'return run summon item_display ~ ~0.7 ~ {item_display}'

    with open(path / 'craft.mcfunction', 'w', encoding='UTF-8') as f:
        f.write(f'summon item ~ ~ ~ {item_entity}')

    with open(path / 'check.mcfunction', 'w', encoding='UTF-8') as f:
        f.write(check_text)

def recipe_page():
    
    page_text = ''
    page_inventory = []
    page_count = (len(VISIBLE_RECIPES) - 1) // 25 + 1

    i = 0
    grouped_recipes = []
    for id, value in RECIPES.items():
        result_id, result_count, view_list, shapeless = value

        for group_id, id_list in RECIPE_GROUPS.items():
            if id in id_list:
                id_len = len(id_list)
                if id_len <= 1:
                    break

                if group_id not in grouped_recipes:
                    grouped_recipes.append(group_id)

                index = id_list.index(id)
                    
                path = RECIPE_PATH.joinpath(id)

                if index + 1 == id_len:
                    next_id = id_list[0]
                else:
                    next_id = id_list[index + 1]
                with open(path / 'alt.mcfunction', 'w', encoding='UTF-8') as f:
                    f.write(f'function gha.generated:recipe/{next_id}/view')

                if shapeless:
                    view_list[18]['components']['item_model'] = 'gha:gui/recipe_shapeless_with_alternative'
                else:
                    view_list[18]['components']['item_model'] = 'gha:gui/recipe_with_alternative'
                view_list[24] = {
                    'Slot': 24,
                    'id': 'command_block',
                    'components': {
                        'item_model': 'air',
                        'custom_data': {
                            'r': True
                        },
                        'item_name': {
                            'translate': 'tooltip.gha.alternative_recipe',
                            'with': [{
                                'text': f'[{index+1}/{id_len}]',
                                'color': 'gray'
                            }],
                            'color': 'yellow'
                        }
                    }
                }

                view_data = re.sub(r'(\'Slot\': \d+)', r'\1b', str({'c': view_list, 'r': id}))
                with open(path / 'view.mcfunction', 'w', encoding='UTF-8') as f:
                    f.write(f'data modify entity @s data merge value {view_data}')
                break

        if id not in VISIBLE_RECIPES:
            continue

        path = RECIPE_PATH.joinpath(id)

        view_data = re.sub(r'(\'Slot\': \d+)', r'\1b', str({'c': view_list, 'r': id}))
        with open(path / 'view.mcfunction', 'w', encoding='UTF-8') as f:
            f.write(f'data modify entity @s data merge value {view_data}')

        page = i // 25 + 1
        slot = i % 25

        if slot == 0:
            page_inventory.clear()
            for j in range(25):
                page_inventory.append(blank_button(j))
            page_inventory += [
                {
                    'Slot': 25,
                    'id': 'command_block',
                    'components': {
                        'item_model': 'gha:gui/arrow_left',
                        'item_name': {
                            'translate': 'tooltip.gha.page.previous',
                            'color': 'green',
                            'with': [{
                                'text': f'[{page}/{page_count}]',
                                'color': 'gray'
                            }]
                        },
                        'custom_data': {
                            'r': True
                        }
                    }
                },{
                    'Slot': 26,
                    'id': 'command_block',
                    'components': {
                        'item_model': 'gha:gui/arrow_right',
                        'item_name': {
                            'translate': 'tooltip.gha.page.next',
                            'color': 'green',
                            'with': [{
                                'text': f'[{page}/{page_count}]',
                                'color': 'gray'
                            }]
                        },
                        'custom_data': {
                            'r': True
                        }
                    }
                }
            ]

            next_page = page + 1
            prev_page = page - 1
            if page == page_count:
                next_page = 1
            if page == 1:
                prev_page = page_count
            
            page_text = 'execute unless items block ~ ~ ~ container.26 command_block[custom_data~{r:1b}] run return run ' + f'function gha.generated:recipe/_page/{next_page}\n' + 'execute unless items block ~ ~ ~ container.25 command_block[custom_data~{r:1b}] run return run ' + f'function gha.generated:recipe/_page/{prev_page}\n' + 'tag @s add gha.viewing_recipe\n'
        
        page_inventory[slot] = item.sprite(slot, result_id, result_count)
        page_text += f'execute unless items block ~ ~ ~ container.{slot} ' + '*[custom_data~{r:1b}] run return run ' + f'function gha.generated:recipe/{id}/view\n'

        if slot == 24 or i == len(VISIBLE_RECIPES) - 1:
            page_text += 'tag @s remove gha.viewing_recipe'
            with open(RECIPE_PAGE_PATH / f'{page}_button.mcfunction', 'w', encoding='UTF-8') as f:
                f.write(page_text)
            
            with open(RECIPE_PAGE_PATH / f'{page}.mcfunction', 'w', encoding='UTF-8') as f:
                f.write(f'data modify entity @s data.p set value {page}\ndata modify entity @s data.c set value {page_inventory}')
        
        i += 1