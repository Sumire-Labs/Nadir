'''
ITEMS
'''

from pathlib import Path
import shutil
from deepmerge import always_merger
deepmerge = always_merger.merge

DIR = Path(__file__).resolve()
DATAPACK_PATH = DIR.parent.parent
GIVE_PATH = DATAPACK_PATH / 'data/gha.generated/function/item/give'
USE_ADVANCEMENT_PATH = DATAPACK_PATH / 'data/gha.generated/advancement/use'
shutil.rmtree(GIVE_PATH, ignore_errors=True)
GIVE_PATH.mkdir()

RARITY = {
    'white': 'white',
    'blue': 'blue',
    'green': 'green',
    'pink': 'light_purple',
    'cyan': 'darK_aqua',
    'orange': '#ff9d4d',
    'purple': '#b458ff',
    'lime': '#c8ff00',
    'red': '#ff3546',
    'yellow': '#ffef5c',
    'light_blue': '#92ffff',
    'magenta': '#ff38ac'
}
RARITY_LIST = list(RARITY.values())

ITEMS = {}

def tooltip(tooltip: str | None = None, amount: int | float | str | None = None, color: str = 'dark_green', args: list = [], italic: bool = False):
    if tooltip == None:
        return ''
    if amount != None:
        args = [str(amount)] + args
    if args:
        return {'translate': tooltip, 'color': color, 'italic': italic, 'with': args}
    return {'translate': tooltip, 'color': color, 'italic': italic}

def tool(default_mining_speed: float, rules: list):
    return {'default_mining_speed': default_mining_speed, 'rules': rules}

def breaking_rule(blocks: str | list, speed: float, correct_for_drops: bool = False):
    return {'blocks': blocks, 'speed': speed, 'correct_for_drops': correct_for_drops}

def attribute(type: str, amount: int | float, operation: str = 'add_value', id: str | None = None, display: str = 'hidden'):
    if id == None:
        id = f'gha:weapon.{type}'
    return {
        'amount': amount,
        'type': type,
        'id': id,
        'operation': operation,
        'display': {
            'type': display
        }
    }

def register(id: str, base: str = 'command_block', components: dict = {}):
    if 'custom_data' in components:
        components['custom_data'] |= {'g': id}
    else:
        components |= {'custom_data': {'g': id}}

    ITEMS[id] = {'base': base, 'components': components}
    item_entity = {'Item': stack(id)}
    with open(GIVE_PATH / f'{id}.mcfunction', 'w') as f:
        f.write(f'summon item ~ ~ ~ {item_entity}')
    with open(GIVE_PATH / f'_all.mcfunction', 'a') as f:
        f.write(f'summon item ~ ~ ~ {item_entity}\n')
    
def add_item(id: str, rarity: str | int = 'white', base: str = 'command_block', lore: list = [], components: dict = {}):
    if type(rarity) == int:
        rarity = RARITY_LIST[rarity]
    elif rarity in RARITY:
        rarity = RARITY[rarity]

    components = deepmerge({
        'item_name': {
            'translate': f'item.gha.{id}',
            'color': rarity
        },
        'lore': lore,
        'item_model': f'gha:{id}'
    }, components)

    if components['lore'] == []:
        components.pop('lore')

    register(id, base, components)

def add_block_item(id: str, rarity: str | int = 'white', lore: list = [], components: dict = {}):
    components = deepmerge({
        'entity_data': {
            'Silent': True,
            'Tags': ['gha.entity'],
            'Invisible': True,
            'Fixed': True,
            'id': 'glow_item_frame',
            'data': {'g': f'place/{id}'}
        }
    }, components)
    add_item(id, rarity, 'glow_item_frame', lore, components)

def add_usable_item_with_lore(id: str, damage: int | float | str, cooldown: int | float | str, rarity: str = 'white', base: str = 'chain_command_block', lore: list = [], animation: str = 'none', consume_seconds: int = 2147483647, can_sprint: bool = True, interact_vibrations: bool = False, speed_multiplier: float = 1.0, max_stack_size: int = 1, cooldown_tick: int = 0, components: dict = {}):
    lore = [
        tooltip(),
        tooltip('tooltip.gha.when_used', color='gray'),
        tooltip('tooltip.gha.attack_damage', damage),
        tooltip('tooltip.gha.cooldown', cooldown)
    ] + lore
    if cooldown_tick == 0 and type(cooldown) != str:
        cooldown_tick = int(cooldown * 20)
    
    add_usable_item(id, cooldown_tick, rarity, base, lore, animation, consume_seconds, can_sprint, interact_vibrations, speed_multiplier, max_stack_size, components)

def add_usable_item(id: str, cooldown_tick: int, rarity: str | int = 'white', base: str = 'chain_command_block', lore: list = [], animation: str = 'none', consume_seconds: int = 2147483647, can_sprint: bool = True, interact_vibrations: bool = False, speed_multiplier: float = 1.0, max_stack_size: int = 1 ,components: dict = {}):
    components = deepmerge({
        'consumable': {
            'animation': animation,
            'consume_seconds': consume_seconds
        },
        'use_effects': {
            'can_sprint': can_sprint,
            'interact_vibrations': interact_vibrations,
            'speed_multiplier': speed_multiplier
        },
        'max_stack_size': max_stack_size
    }, components)

    add_item(id, rarity, base, lore, components)

    advancement = {
        'criteria': {
            'requirement': {
                'trigger': 'using_item',
                'conditions': {
                    'item': {
                        'items': base,
                        'predicates': {'custom_data': {'g': id}}
                    },
                    'player': {
                        'entity': 'this',
                        'type': 'entity_scores',
                        'scores': {'gha.cooldown': {'min': cooldown_tick}}
                    }
                }
            }
        },
        'rewards': {
            'function':f'gha:item/event/{id}/use'
        }
    }
    with open(USE_ADVANCEMENT_PATH / f'{id}.json', 'w') as f:
        f.write(str(advancement).replace('\'', '\"'))

def add_item_with_attribute(id: str, rarity: str = 'white', attributes: list = [], base: str = 'chain_command_block', lore: list = [], components: dict = {}):
    components = deepmerge({
        'attribute_modifiers': attributes,
        'max_stack_size': 1
    }, components)
    
    add_item(id, rarity, base, lore, components)

def add_usable_item_with_attribute(id: str, cooldown_tick: int, rarity: str | int = 'white', attributes: list = [], base: str = 'chain_command_block', lore: list = [], animation: str = 'none', consume_seconds: int = 2147483647, can_sprint: bool = True, interact_vibrations: bool = False, speed_multiplier: float = 1.0, components: dict = {}):
    components = deepmerge({'attribute_modifiers': attributes}, components)
    
    add_usable_item(id, cooldown_tick, rarity, base, lore, animation, consume_seconds, can_sprint, interact_vibrations, speed_multiplier, 1, components)

def add_tool_item(id: str, name_color: str = 'white', attributes: list = [], base: str = 'command_block', lore: list = [], tool: dict = {}, block_transformer: list = [], damage: int | float = 1, attack_speed: int | float = 1, mining_speed: int | float = 1, mining_level: int = 0, components: dict = {}):
    base_components = {
        'attribute_modifiers': attributes,
        'tool': tool,
    }
    if block_transformer:
        base_components |= {
            'block_transformer': block_transformer
        }
    components = deepmerge(base_components, components)
    
    base_lore = [
        tooltip(),
        tooltip('tooltip.gha.when_used', color='gray'),
        tooltip('tooltip.gha.attack_damage', damage),
        tooltip('tooltip.gha.attack_speed', attack_speed),
        tooltip('tooltip.gha.mining_speed', mining_speed),
    ]
    if mining_level > 0:
        base_lore += [tooltip(), tooltip(f'tooltip.gha.mining_level.{mining_level}', color='gold')]
    
    add_item_with_attribute(id, name_color, attributes, base, base_lore + lore, components)



def stack(id: str, count: int = 1):
    if id in ITEMS:
        base, components = ITEMS[id].values()
        return {'id': base, 'count': count, 'components': components}
    
    return {'id': id, 'count': count}

def display(id: str):
    if id in ITEMS:
        base, components = ITEMS[id].values()
        return {
            'Tags': ['gha.craft_display'],
            'billboard': 'vertical',
            'item_display': 'gui',
            'transformation': {
                'left_rotation': [0.0, 0.0, 0.0, 1.0],
                'right_rotation': [0.0, 0.0, 0.0, 1.0],
                'scale': [0.5, 0.5, 0.5],
                'translation': [0.0, 0.25, 0.0]
                },
            'item': {
                'id': base,
                'count': 1,
                'components': {
                    'item_model': f'gha:{id}'
                }
            }
        }
    
    return {'id': id, 'count': 1}

def sprite(slot: int, id: str, count: int = 1):
    if id in ITEMS:
        base, components = ITEMS[id].values()
        raw = {
            'Slot': slot,
            'id': base,
            'count': count,
            'components': {
                'item_model': components['item_model'],
                'item_name': components['item_name'],
                'custom_data': {
                    'r': True
                }
            }
        }
        if 'lore' in components:
            raw['components']['lore'] = components['lore']
        return raw
    
    return {
        'Slot': slot,
        'id': id,
        'count': count,
        'components': {
            'custom_data': {
                'r': True
            }
        }
    }

def ingredient(slot: int, id: str):
    if id in ITEMS:
        base, components = ITEMS[id].values()
        return {
            'Slot': slot,
            'id': f'minecraft:{base}',
            'components': {
                'minecraft:custom_data': {
                    'g': id
                }
            }
        }
    return {
        'Slot': slot,
        'id': f'minecraft:{id}'
    }

def shapeless_ingredient(id: str):
    if id in ITEMS:
        base, components = ITEMS[id].values()
        return {
            'id': f'minecraft:{base}',
            'components': {
                'minecraft:custom_data': {
                    'g': id
                }
            }
        }
    return {
        'id': f'minecraft:{id}'
    }

def ingredient_property(id: str):
    if id in ITEMS:
        base, components = ITEMS[id].values()
        return base + '[custom_data~{\'g\':' + id + '}]' 

    return id