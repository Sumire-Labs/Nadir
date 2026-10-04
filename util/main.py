'''
UTILITIES - MAIN
'''

from recipe import recipe_page, add_shaped, add_shapeless, random_recipe
from item import add_item, add_block_item, add_usable_item_with_lore, add_usable_item, add_item_with_attribute, add_usable_item_with_attribute, add_tool_item, tooltip, tool, breaking_rule, attribute, RARITY

MEMBER_ITEM = {'translate': 'tooltip.gha.member_item', 'color': RARITY['magenta'], 'italic': False}

"""
command_block: common items
chain_command_block: r-click
repeating_command_block: sweep attack
glow_item_frame: block
"""

# Items
add_item('dried_ash')
add_item('lapis_amalgam', 'blue')
add_item('heavy_scrap', 'blue')
add_item('heavy_plate', 'blue')
add_item('aquamarine', 'green')
add_item('vermilion', 'green')
add_item('onyx_crystal', 'pink')
add_item('crystalline_ingot', 'pink')
add_item('crystalline_nugget', 'pink')
add_item('fleze_rod', 'pink')
add_item('infernal_powder', 'orange')
add_item('abyssal_fragment', 'purple')
add_item('obsidian_core', 'purple')
add_item('raw_mythril', 'purple')
add_item('mythril_ingot', 'purple')
add_item('mythril_nugget', 'purple')
add_item('nature_essence', 'lime')
add_item('benevolence_soul', 'lime')
add_item('malice_soul', 'lime')
add_item('raw_orichalcum', 'red')
add_item('guardian_core', 'red')
add_item('divine_alloy_ingot', 'red')
add_item('divine_alloy_nugget', 'red')
add_item('unholy_fragment', 'red')
add_item('blood_orb', 'red')

add_usable_item_with_lore('enchanted_wand', 3, 0.6, lore=[tooltip('item.gha.enchanted_wand.tooltip', color='dark_aqua')])
add_usable_item_with_lore('burning_rod', 3, 0.8)
add_usable_item_with_lore('icicle_rod', 2, 0.7)
add_usable_item_with_lore('storm_rod', 4, 1.2, lore=[tooltip('item.gha.storm_rod.tooltip', color='dark_aqua')])
add_usable_item_with_lore('hunter_shortsword', 3.5, 0.25)
add_usable_item_with_lore('brick_mattock', 5, 0.75, max_stack_size=64)
add_usable_item_with_lore('sarkara', 4, 0.75, lore=[tooltip('item.gha.sarkara.tooltip', color='dark_aqua')], )
add_usable_item('bustersushi', 5, lore=['', tooltip('tooltip.gha.when_used', color='gray'), tooltip('tooltip.gha.cooldown', 0.25), tooltip('item.gha.bustersushi.tooltip', color='dark_aqua'), '', MEMBER_ITEM])
add_usable_item_with_lore('o_potato_launcher', 12, 1.8, lore=[tooltip('item.gha.o_potato_launcher.tooltip', color='dark_aqua'), '', MEMBER_ITEM])
add_item('fish_energy_cell', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('voltethyst', 5, '0.6-0.9', 'blue', cooldown_tick=12)
add_usable_item_with_lore('pink_typhoon', 5, 0.3, 'blue')
add_item_with_attribute('deceiver', 'blue', [attribute('attack_damage', 5), attribute('attack_speed', -2.4)], 'repeating_command_block', lore=['', tooltip('item.modifiers.mainhand', color='gray'), tooltip('tooltip.gha.attack_damage', 6), tooltip('tooltip.gha.attack_speed', 1.6), tooltip('item.gha.deceiver.tooltip', color='dark_aqua')])
add_usable_item_with_lore('eggregator', 3, 0.3, 'blue', lore=[tooltip('item.gha.eggregator.tooltip', color='dark_aqua'), tooltip('item.gha.eggregator.tooltip.1', color='dark_aqua')])
add_usable_item('lasore_gun', 7, 'blue', lore=['', {'translate': 'tooltip.gha.when_used', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.cooldown', 'with': [0.35], 'color': 'dark_green', 'italic': False}, {'translate': 'item.gha.lasore_gun.tooltip', 'color': 'dark_aqua', 'italic': False}, {'translate': 'item.gha.lasore_gun.tooltip.1', 'color': 'dark_aqua', 'italic': False}])
add_usable_item_with_lore('solchain', 6, 0.35, 'blue', lore=['', MEMBER_ITEM])
add_usable_item_with_lore('sumirinate', 12, 1.8, lore=[tooltip('item.gha.smirinate.tooltip', color='dark_aqua'), '', MEMBER_ITEM])

add_usable_item_with_lore('shining_dagger', 4.5, 0.2, 'green', lore=[{'translate': 'item.gha.shining_dagger.tooltip', 'color': 'dark_aqua', 'italic': False}])
add_usable_item_with_lore('aquatic_prism', 7, 2.5, 'green')
add_usable_item_with_lore('bubble_scepter', 2, 0.15, 'green')
add_usable_item_with_lore('thorn_stab', 9, 1.6, 'green')
add_usable_item_with_lore('nether_brick_mattock', 7, 0.4, 'green', max_stack_size=64)
add_usable_item_with_attribute('shishenium_rapier', 40, 'green', attributes=[attribute('attack_damage', 4.75), attribute('attack_speed', -2.2), attribute('entity_interaction_range', 0.5)], lore=['', {'translate': 'item.modifiers.mainhand', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.attack_damage', 'with': [5.75], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.attack_speed', 'with': [1.8], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.entity_interaction_range', 'with': [5.5], 'color': 'dark_green', 'italic': False}, '', {'translate': 'tooltip.gha.when_used', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.attack_damage', 'with': ['8.30'], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.cooldown', 'with': [2], 'color': 'dark_green', 'italic': False}, {'translate': 'item.gha.shishenium_rapier.tooltip', 'color': 'dark_aqua', 'italic': False}, '', MEMBER_ITEM])
add_usable_item_with_lore('magcup', 9, 0.9, lore=[tooltip('item.gha.magcup.tooltip', color='dark_aqua'), '', MEMBER_ITEM])
add_item('pufferfish_energy_cell', 'green', lore=['', MEMBER_ITEM])
add_item('tropical_fish_energy_cell', 'green', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('ice_meteor_swarm', 9, 0.6, 'pink')
add_usable_item_with_lore('frostburn_saber', 8, 0.5, 'pink')
add_usable_item_with_lore('ddt_shooter', 3, 0.2, 'pink')
add_usable_item_with_lore('frigid_snow', 3, 0.7, 'pink')
add_usable_item_with_attribute('crimson_katana', 10, 'pink', attributes=[attribute('attack_damage', 10), attribute('attack_speed', -3.1)], base='repeating_command_block', lore=['',tooltip('item.modifiers.mainhand', color='gray'), tooltip('tooltip.gha.attack_damage', 11), tooltip('tooltip.gha.attack_speed', 0.9), '', tooltip('tooltip.gha.when_used', color='gray'), tooltip('item.gha.crimson_katana.tooltip', color='dark_aqua'), tooltip('item.gha.crimson_katana.tooltip.1', color='dark_aqua'), tooltip('item.gha.crimson_katana.tooltip.2', color='dark_aqua')])
add_usable_item_with_lore('vampire_knives', 3, 0.9, 'pink')
add_usable_item_with_lore('ambrosia', 12, 1.75, 'pink')
add_usable_item_with_attribute('knock_of_shadow', 35, 'pink', attributes=[attribute('attack_damage', 5), attribute('attack_speed', -2)], lore=['', {'translate': 'item.modifiers.mainhand', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.attack_damage', 'with': [6], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.attack_speed', 'with': [2], 'color': 'dark_green', 'italic': False}, '', {'translate': 'tooltip.gha.when_used', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.cooldown', 'with': [1.75], 'color': 'dark_green', 'italic': False}, {'translate': 'item.gha.knock_of_shadow.tooltip', 'color': 'dark_aqua', 'italic': False}])
add_usable_item_with_lore('ice_elibomvu', 11, 1.4, 'pink', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('starfury', 12, 0.4, 'cyan')
add_item_with_attribute('shellcrusher', 'cyan', [attribute('attack_damage', 11), attribute('attack_speed', -3), attribute('sneaking_speed', -0.25)], lore=['', {'translate': 'item.modifiers.mainhand', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.attack_damage', 'with': [12], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.attack_speed', 'with': [1], 'color': 'dark_green', 'italic': False}, {'translate': 'item.gha.shellcrusher.tooltip', 'color': 'dark_aqua', 'italic': False}])
add_usable_item_with_attribute('ender_katana', 10, 'cyan', attributes=[attribute('attack_damage', 16), attribute('attack_speed', -3.1)], base='repeating_command_block', lore=['',tooltip('item.modifiers.mainhand', color='gray'), tooltip('tooltip.gha.attack_damage', 17), tooltip('tooltip.gha.attack_speed', 0.9), '', tooltip('tooltip.gha.when_used', color='gray'), tooltip('item.gha.crimson_katana.tooltip', color='dark_aqua'), tooltip('item.gha.ender_katana.tooltip.1', color='dark_aqua'), tooltip('item.gha.crimson_katana.tooltip.2', color='dark_aqua')])
add_usable_item_with_lore('chorubranch', 7, 1, 'cyan')
add_usable_item_with_lore('dragon_gauntlet', 19, 0.2, 'cyan')
add_usable_item_with_lore('flashing_purple', 4, 0.8, 'cyan')
add_usable_item_with_lore('pearlescent_greatsword', 20, 1.8, 'cyan')
add_usable_item_with_lore('semi_established_substance', 13, 0.2, 'cyan')
add_usable_item_with_attribute('maggro_blade', 100, 'cyan', [attribute('attack_damage', 12), attribute('attack_speed', -2.6)], lore=['', {'translate': 'item.modifiers.mainhand', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.attack_damage', 'with': [13], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.attack_speed', 'with': [1.4], 'color': 'dark_green', 'italic': False}, '', {'translate': 'tooltip.gha.when_used', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.cooldown', 'with': [5], 'color': 'dark_green', 'italic': False}, {'translate': 'item.gha.maggro_blade.tooltip', 'color': 'dark_aqua', 'italic': False}, '', MEMBER_ITEM])
add_item('frosted_energy_cell', 'cyan', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('volcano', 39, 1.6, 'orange')
add_usable_item_with_lore('sand_zapper', 28, 0.9, 'orange')
add_usable_item_with_lore('flame_chakram', 25, 0.8, 'orange')
add_usable_item_with_lore('kiln_blaster', 12, 1.2, 'orange')
add_usable_item_with_lore('calamity_of_hell', 40, 2.5, 'orange', lore=[{'translate': 'item.gha.calamity_of_hell.tooltip', 'color': 'dark_aqua', 'italic': False}])
add_usable_item_with_lore('chikuwab', 25, 0.4, 'orange', lore=['', MEMBER_ITEM])
add_item_with_attribute('namecore', 'orange', [attribute('attack_damage', 20), attribute('attack_speed', -3.2)], lore=['', {'translate': 'item.modifiers.mainhand', 'color': 'gray', 'italic': False}, {'translate': 'tooltip.gha.attack_damage', 'with': [21], 'color': 'dark_green', 'italic': False}, {'translate': 'tooltip.gha.attack_speed', 'with': [1.8], 'color': 'dark_green', 'italic': False}, {'translate': 'item.gha.namecore.tooltip', 'color': 'dark_aqua', 'italic': False}, '', MEMBER_ITEM])

add_usable_item_with_lore('flamefrost_blade', 32, 0.8, 'purple')
add_usable_item_with_lore('grand_sea', 26, 0.6, 'purple')
add_usable_item_with_lore('x_shot_bow', 14, 1, 'purple')
add_usable_item_with_lore('axe_of_radiance', 33, 0.7, 'purple')
add_usable_item_with_lore('majestic_darkness', 56, 2.2, 'purple')
add_usable_item_with_lore('ah_tho_water', 18, 0.9, 'purple', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('terra_blade', 36, 0.2, 'lime')
add_item_with_attribute('master_deceiver', 'lime', [attribute('attack_damage', 41), attribute('attack_speed', -2.4)], 'repeating_command_block', lore=['', tooltip('item.modifiers.mainhand', color='gray'), tooltip('tooltip.gha.attack_damage', 42), tooltip('tooltip.gha.attack_speed', 1.6), tooltip('item.gha.master_deceiver.tooltip', color='dark_aqua')])
add_usable_item_with_lore('vernalization', 12, 0.1, 'lime')
add_usable_item_with_lore('photosensitivity', 88, 0.8, 'lime')
add_usable_item_with_lore('infernal_blaze', 40, 0.5, 'lime')
add_usable_item_with_lore('the_operand', 72, 0.7, 'lime', lore=['', MEMBER_ITEM])
add_usable_item_with_lore('clay_sniper_rifle', 230, 2.0, 'lime', lore=['', MEMBER_ITEM])
add_item('living_energy_cell', 'lime', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('abyssquatic', 60, 0.4, 'red')
add_usable_item_with_lore('cold_inferno', 80, 0.75, 'red')
add_usable_item_with_lore('bloodray', 48, 0.4, 'red')
add_usable_item_with_lore('valkyries_spear', 88, 0.6, 'red')
add_usable_item_with_lore('o_clocker', 96, 0.4, 'red')
add_usable_item_with_lore('bowne', 100, 1, 'red')
add_usable_item_with_lore('treiangle', '20-200', 0.6, 'red')
add_usable_item_with_lore('cryoflux', 72, 1.5, 'red', lore=['', MEMBER_ITEM])
add_usable_item_with_lore('nero_claymore', 180, 2.0, 'red', lore=['', MEMBER_ITEM])

add_usable_item_with_lore('sunrise', 85, 0.15, 'yellow')
add_usable_item_with_lore('phantasm', 120, '0.1-0.4', 'yellow', cooldown_tick=2)
add_usable_item_with_lore('nuclear_fury', 108, 0.3, 'yellow')

add_block_item('workbench')
add_block_item('recipe_library')
add_block_item('energized_furnace')
add_block_item('resonant_smelter', 'pink')
add_block_item('hellforge', 'orange')
add_block_item('crucible_of_the_cosmos', 'red')
add_block_item('gold_storage_crate')
add_block_item('diamond_storage_crate', 'pink')
add_block_item('copper_storage_cabinet')
add_block_item('emerald_storage_cabinet', 'green')
add_block_item('crystalline_block', 'pink')
add_block_item('mythril_block', 'purple')
add_block_item('divine_alloy_block', 'red')

# Recipes
add_shapeless('4x heavy_plate', [
    'iron_ingot', 'iron_ingot', 'iron_ingot',
    'iron_ingot', 'heavy_scrap', 'iron_ingot',
    'iron_ingot', 'iron_ingot', 'iron_ingot'
])

add_shapeless('6x lapis_amalgam', [
    'lapis_lazuli', 'lapis_lazuli', 'lapis_lazuli',
    'lapis_lazuli', 'phantom_membrane', 'lapis_lazuli',
    'lapis_lazuli', 'lapis_lazuli', 'lapis_lazuli'
])

add_shapeless('vermilion', [
    '2x magma_block', '2x quartz', '2x redstone'
])

add_shapeless('crystalline_ingot', [
    'diamond', 'onyx_crystal', '2x amethyst_shard'
], 'crystalline_ingot')

add_shapeless('crystalline_ingot', [
    'aquamarine', 'onyx_crystal', '2x amethyst_shard'
], 'crystalline_ingot')

add_shaped('crystalline_ingot', [
    'crystalline_nugget', 'crystalline_nugget', 'crystalline_nugget',
    'crystalline_nugget', 'crystalline_nugget', 'crystalline_nugget',
    'crystalline_nugget', 'crystalline_nugget', 'crystalline_nugget'
], 'crystalline_ingot')

add_shapeless('9x crystalline_ingot', [
    'crystalline_block'
], 'crystalline_ingot')

add_shapeless('9x crystalline_nugget', [
    '', '', '', 
    '', 'crystalline_ingot', '',
    '', '', ''
])

add_shaped('crystalline_block', [
    'crystalline_ingot', 'crystalline_ingot', 'crystalline_ingot',
    'crystalline_ingot', 'crystalline_ingot', 'crystalline_ingot',
    'crystalline_ingot', 'crystalline_ingot', 'crystalline_ingot'
])

add_shapeless('mythril_ingot', [
    'raw_mythril', 'abyssal_fragment'
], 'mythril_ingot')

add_shaped('mythril_ingot', [
    'mythril_nugget', 'mythril_nugget', 'mythril_nugget',
    'mythril_nugget', 'mythril_nugget', 'mythril_nugget',
    'mythril_nugget', 'mythril_nugget', 'mythril_nugget'
], 'mythril_ingot')

add_shapeless('9x mythril_ingot', [
    '', '', '', 
    '', 'mythril_block', '',
    '', '', ''
], 'mythril_ingot')

add_shapeless('9x mythril_nugget', [
    '', '', '', 
    '', 'mythril_ingot', '',
    '', '', ''
])

add_shaped('mythril_block', [
    'mythril_ingot', 'mythril_ingot', 'mythril_ingot',
    'mythril_ingot', 'mythril_ingot', 'mythril_ingot',
    'mythril_ingot', 'mythril_ingot', 'mythril_ingot'
])

add_shapeless('2x divine_alloy_ingot', [
    '2x raw_orichalcum', 'mythril_ingot', 'crystalline_ingot'
], 'divine_alloy_ingot')

add_shaped('divine_alloy_ingot', [
    'divine_alloy_nugget', 'divine_alloy_nugget', 'divine_alloy_nugget',
    'divine_alloy_nugget', 'divine_alloy_nugget', 'divine_alloy_nugget',
    'divine_alloy_nugget', 'divine_alloy_nugget', 'divine_alloy_nugget'
], 'divine_alloy_ingot')

add_shapeless('9x divine_alloy_ingot', [
    '', '', '', 
    '', 'divine_alloy_block', '',
    '', '', ''
], 'divine_alloy_ingot')

add_shapeless('9x divine_alloy_nugget', [
    '', '', '', 
    '', 'divine_alloy_ingot', '',
    '', '', ''
])

add_shaped('divine_alloy_block', [
    'divine_alloy_ingot', 'divine_alloy_ingot', 'divine_alloy_ingot',
    'divine_alloy_ingot', 'divine_alloy_ingot', 'divine_alloy_ingot',
    'divine_alloy_ingot', 'divine_alloy_ingot', 'divine_alloy_ingot'
])

add_shaped('enchanted_wand', [
    '', '', 'lapis_lazuli',
    '', 'stick', '',
    'redstone', '', ''
], 'enchanted_wand')

add_shaped('enchanted_wand', [
    '', '', 'redstone',
    '', 'stick', '',
    'lapis_lazuli', '', ''
], 'enchanted_wand')

add_shaped('burning_rod', [
    '', '4x torch', '',
    '', 'flint', '',
    '', 'stick', ''
])

add_shaped('icicle_rod', [
    '', '4x snowball', '',
    '', 'light_blue_dye', '',
    '', 'stick', ''
])

add_shaped('storm_rod', [
    '', '4x string', '', 
    '', 'sand', '',
    '', 'stick', ''
])

add_shaped('hunter_shortsword', [
    '', '', 'copper_sword',
    '', 'copper_sword', 'iron_ingot',
    'stick', 'iron_ingot', ''
])

add_shaped('8x brick_mattock', [
    'copper_ingot', 'brick', 'brick',
    '', 'stick', 'brick',
    'stick', '', ''
])

add_shaped('sarkara', [
    '', 'glow_berries', 'sugar',
    '2x sweet_berries', '', 'string',
    '', 'glow_berries', 'sugar'
])

add_shaped('bustersushi', [
    '2x salmon', '2x salmon', '2x salmon',
    'redstone_block', 'repeater', 'repeater',
    '2x wheat', '2x wheat', '2x wheat'
])

add_shaped('o_potato_launcher', [
    '4x copper_ingot', '4x copper_ingot', 'gold_ingot',
    '16x potato', '16x potato', 'redstone_block',
    '4x copper_ingot', '4x copper_ingot', 'gold_ingot'
])


add_shaped('voltethyst', [
    '', 'redstone', 'amethyst_shard',
    'redstone', 'amethyst_shard', 'redstone',
    '2x diamond', 'redstone', ''
])

add_shaped('deceiver', [
    '', '', 'prismarine_crystals',
    'diamond', 'prismarine_crystals', '',
    'ender_pearl', 'diamond', ''
])

add_shaped('lasore_gun', [
    'iron_ingot', 'iron_ingot', 'iron_ingot',
    'iron_block', 'iron_block', '4x resin_brick',
    'diamond', 'diamond', '8x redstone'
])

add_shaped('pink_typhoon', [
    '', 'emerald', '',
    '16x pink_petals', 'book', '16x pink_petals',
    '', '4x resin_brick', ''
])

add_shaped('eggregator', [
    '', '2x gold_ingot', '2x gold_ingot',
    '16x egg', '64x wheat', 'diamond',
    '', '2x iron_ingot', '2x iron_ingot'
])

add_shaped('solchain', [
    '2x heavy_plate', 'diamond', 'iron_block',
    '', '', 'iron_chain',
    'emerald', 'iron_chain', 'iron_chain'
])


add_shaped('vampire_knives', [
    'iron_ingot', 'vermilion', '',
    'iron_ingot', 'vermilion', 'vermilion',
    'netherite_scrap', 'iron_ingot', 'iron_ingot'
])

add_shaped('crimson_katana', [
    '', '', 'crimson_stem',
    '2x vermilion', 'crimson_stem', '',
    'netherite_scrap', '2x vermilion', ''
])

add_shaped('8x nether_brick_mattock', [
    'gold_ingot', 'nether_brick', 'nether_brick',
    '', 'stick', 'nether_brick',
    'stick', '', ''
])

add_shaped('shishenium_rapier', [
    '', '', '2x aquamarine',
    'diamond', '2x aquamarine', '',
    'breeze_rod', 'diamond', ''
])


add_shaped('chorubranch', [
    '', 'chorus_flower', '',
    'end_rod', 'book', 'end_rod',
    '', 'end_rod', ''
])

add_shaped('starfury', [
    '', 'dragon_breath', '',
    'ender_eye', 'purpur_block', 'ender_eye',
    '', 'golden_sword', ''
])

add_shaped('shellcrusher', [
    'shulker_shell', 'shulker_shell', 'emerald_block',
    '', 'diamond_axe', 'emerald_block',
    'stick', '', ''
])

add_shaped('ender_katana', [
    '', '4x ender_eye', '',
    'popped_chorus_fruit', 'crimson_katana', 'popped_chorus_fruit',
    '', '4x ender_pearl', ''
])

add_shaped('knock_of_shadow', [
    '', 'amethyst_shard', 'purpur_block',
    '4x ender_eye', 'purpur_block', 'amethyst_shard',
    'echo_shard', '4x ender_pearl', ''
])


add_shaped('volcano', [
    '', '', '8x vermilion',
    'infernal_powder', '8x vermilion', '',
    'netherite_sword', 'infernal_powder', ''
])

add_shaped('flame_chakram', [
    '4x blaze_rod', '4x vermilion', 'infernal_powder',
    '4x vermilion', '', '4x vermilion',
    'infernal_powder', '4x vermilion', '4x blaze_rod'
])


add_shaped('x_shot_bow', [
    '', 'abyssal_fragment', 'amethyst_shard',
    'abyssal_fragment', 'bow', 'abyssal_fragment',
    'amethyst_shard', 'abyssal_fragment', ''
])

add_shaped('flamefrost_blade', [
    '', '4x mythril_ingot', 'volcano',
    '4x fleze_rod', 'obsidian_core', '4x blaze_rod',
    'ice_meteor_swarm', '4x mythril_ingot', ''
])

add_shaped('majestic_darkness', [
    'thorn_stab', 'netherite_ingot', 'pearlescent_greatsword',
    '4x mythril_ingot', 'obsidian_core', '4x mythril_ingot',
    '', 'ender_katana', ''
])

add_shaped('axe_of_radiance', [
    '', 'diamond_block', '16x brick_mattock',
    '4x mythril_ingot', 'obsidian_core', '4x mythril_ingot',
    '16x nether_brick_mattock', 'diamond_block', ''
])


add_shaped('terra_blade', [
    '', 'benevolence_soul', '',
    'flamefrost_blade', '32x nature_essence', 'majestic_darkness',
    '', 'malice_soul', ''
])


add_shaped('o_clocker', [
    '', 'divine_alloy_ingot', 'fleze_rod',
    'divine_alloy_ingot', 'frostburn_saber', 'divine_alloy_ingot',
    'fleze_rod', 'divine_alloy_ingot', ''
])


add_shaped('2x fish_energy_cell', [
    '', 'blue_dye', '',
    '', 'cod', '',
    '', 'copper_ingot', ''
], 'fish_energy_cell')

add_shaped('2x fish_energy_cell', [
    '', 'blue_dye', '',
    '', 'salmon', '',
    '', 'copper_ingot', ''
], 'fish_energy_cell')

add_shaped('4x pufferfish_energy_cell', [
    '', 'yellow_dye', '',
    '', '2x pufferfish', '',
    '', 'aquamarine', ''
])

add_shaped('4x tropical_fish_energy_cell', [
    '', 'orange_dye', '',
    '', '2x tropical_fish', '',
    '', 'aquamarine', ''
])

add_shaped('4x frosted_energy_cell', [
    '', '2x popped_chorus_fruit', '',
    'cod', 'ice', 'salmon',
    '', '2x copper_ingot', ''
])

add_shaped('8x living_energy_cell', [
    '', 'nature_essence', '',
    '2x cod', 'abyssal_fragment', '2x salmon',
    '', '4x copper_ingot', ''
])


add_shapeless('workbench', [
    'crafting_table', 'cobblestone'
])

add_shapeless('recipe_library', [
    'crafting_table', 'cobblestone', 'book'
])

add_shaped('energized_furnace', [
    'iron_ingot', 'iron_ingot', 'iron_ingot',
    'redstone_block', 'furnace', 'redstone_block',
    'iron_ingot', 'iron_ingot', 'iron_ingot'
])

add_shaped('resonant_smelter', [
    'gold_ingot', 'onyx_crystal', 'gold_ingot',
    'ender_pearl', 'energized_furnace', 'ender_pearl',
    'gold_ingot', 'gold_ingot', 'gold_ingot'
])

add_shaped('hellforge', [
    'vermilion', 'netherite_ingot', 'vermilion',
    'infernal_powder', 'resonant_smelter', 'infernal_powder',
    'vermilion', 'vermilion', 'vermilion'
])

add_shaped('crucible_of_the_cosmos', [
    'divine_alloy_ingot', 'guardian_core', 'divine_alloy_ingot',
    'malice_soul', 'hellforge', 'benevolence_soul',
    'divine_alloy_ingot', 'divine_alloy_ingot', 'divine_alloy_ingot'
])

add_shaped('gold_storage_crate', [
    'gold_ingot', 'gold_ingot', 'gold_ingot',
    'iron_ingot', '4x chest', 'iron_ingot',
    'gold_ingot', 'gold_ingot', 'gold_ingot'
])

add_shaped('diamond_storage_crate', [
    'diamond', 'diamond', 'diamond',
    'crystalline_ingot', '16x chest', 'crystalline_ingot',
    'diamond', 'diamond', 'diamond'
], 'diamond_storage_crate')

add_shaped('diamond_storage_crate', [
    'diamond', 'diamond', 'diamond',
    'crystalline_ingot', 'gold_storage_crate', 'crystalline_ingot',
    'diamond', 'diamond', 'diamond'
], 'diamond_storage_crate')

add_shaped('copper_storage_cabinet', [
    'copper_ingot', 'iron_ingot', 'copper_ingot',
    'copper_ingot', 'chest', 'copper_ingot',
    'copper_ingot', 'iron_ingot', 'copper_ingot'
])

add_shaped('emerald_storage_cabinet', [
    'emerald', 'aquamarine', 'emerald',
    'emerald', '16x chest', 'emerald',
    'emerald', 'aquamarine', 'emerald'
], 'emerald_storage_cabinet')

add_shaped('emerald_storage_cabinet', [
    'emerald', 'aquamarine', 'emerald',
    'emerald', 'copper_storage_cabinet', 'emerald',
    'emerald', 'aquamarine', 'emerald'
], 'emerald_storage_cabinet')

recipe_page()