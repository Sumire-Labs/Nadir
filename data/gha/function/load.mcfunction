# 初期化
data remove storage gha:recipe_shape shaped
data remove storage gha:recipe_shape shapeless
data remove storage gha:temp temp

# 登録
function gha:registry/scoreboard
function gha:registry/recipe
function gha:registry/bossbar

# データ保存用シュルカーボックス
forceload add 1000000 1000000
setblock 1000000 0 1000000 shulker_box
execute in the_nether run forceload add 1000000 1000000
execute in the_nether run setblock 1000000 0 1000000 shulker_box
execute in the_end run forceload add 1000000 1000000
execute in the_end run setblock 1000000 0 1000000 shulker_box

# ゲームルール
gamerule show_death_messages false
gamerule pvp false
gamerule immediate_respawn true
gamerule keep_inventory true
difficulty hard