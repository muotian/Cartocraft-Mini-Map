scoreboard players remove @s light_green.adapt_bullet.equip 1
$execute if score @s light_green.adapt_bullet.equip matches 0 as @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker] run function light_green:item/golem/mod/adapt/bullet/clear
$execute at @s store result score @s light_green.adapt_piglin_girl_weapon run execute if entity @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker]
