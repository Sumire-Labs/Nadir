function gha:player/selected_item/mainhand_check with entity @s
$data modify storage gha:player player[{u:$(UUID)}].s set from entity @s SelectedItem