execute unless score @s wool_purple.main.mob_cheak matches 2.. run return run function ordered_splinter_main:unsetting
execute unless score @s wool_purple.main.mob_cheak matches 3.. run return run function ordered_splinter_main:mobsetting

execute store result storage hptext:data id int 1 run scoreboard players get @s wool_purple.main.mob_id
execute store result storage mob:data id int 1 run scoreboard players get @s wool_purple.main.mob_id