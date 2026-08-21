$execute as @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker] run function light_green:item/golem/mod/adapt/bullet/clear
$execute at @s store result score @s light_green.adapt_piglin_girl_weapon run execute if entity @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker]
execute store result score @s light_green.adapt_health run data get entity @s Health
scoreboard players reset @s light_green.adapt_bullet.summon
execute if score @s light_green.adapt_health_late = @s light_green.adapt_health run return run scoreboard players operation @s light_green.adapt_health_late = @s light_green.adapt_health
execute store result score $adapt_loop_max light_green.main.math run scoreboard players operation @s light_green.adapt_health_late -= @s light_green.adapt_health
scoreboard players set $adapt_loop_value light_green.main.math 0
function light_green:item/golem/mod/adapt/bullet/hoglin_target
scoreboard players operation @s light_green.adapt_health_late = @s light_green.adapt_health