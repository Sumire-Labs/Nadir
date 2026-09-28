execute unless items block ~ ~ ~ container.26 command_block[custom_data~{r:1b}] run return run function gha:recipe/_page/1
execute unless items block ~ ~ ~ container.25 command_block[custom_data~{r:1b}] run return run function gha:recipe/_page/2
tag @s add gha.viewing_recipe
execute unless items block ~ ~ ~ container.0 *[custom_data~{r:1b}] run return run function gha:recipe/r98/view
execute unless items block ~ ~ ~ container.1 *[custom_data~{r:1b}] run return run function gha:recipe/r100/view
execute unless items block ~ ~ ~ container.2 *[custom_data~{r:1b}] run return run function gha:recipe/r101/view
tag @s remove gha.viewing_recipe