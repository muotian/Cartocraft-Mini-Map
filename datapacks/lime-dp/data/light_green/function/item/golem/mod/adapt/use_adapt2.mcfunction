$execute at @s store result score @s light_green.adapt_piglin_girl_weapon run execute if entity @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker]
execute unless score @s light_green.adapt_piglin_girl_weapon matches 1.. run return run scoreboard players operation @s light_green.piglin_girl_weapon.use -= $use_adapt light_green.main.math
scoreboard players remove $use_adapt light_green.main.math 1
$execute as @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},limit=1,type=marker] run function light_green:item/golem/mod/adapt/bullet/clear
$execute at @s store result score @s light_green.adapt_piglin_girl_weapon run execute if entity @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker]
execute store result storage light_green:golem_item id int 1 run scoreboard players get @s light_green.player_id
execute if score $use_adapt light_green.main.math matches 1.. run function light_green:item/golem/mod/adapt/use_adapt2 with storage light_green:golem_item