execute unless score @s wool_purple.main.player_id matches 1.. run function ordered_splinter_main:player_setting

execute store result storage player:data id int 1 run scoreboard players get @s wool_purple.main.player_id

function ordered_splinter_hand_take:convert with storage player:data

execute if score $take wool_purple.main.math matches 1 run function ordered_splinter_weapon:convert/normal with storage player:data