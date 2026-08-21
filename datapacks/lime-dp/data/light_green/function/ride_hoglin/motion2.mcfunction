$execute run scoreboard players set $x light_green.main.math $(x)
$execute run scoreboard players set $z light_green.main.math $(z)
execute store result storage light_green:hoglin x double 0.1 run scoreboard players operation $x light_green.main.math /= $2 light_green.main.math
execute store result storage light_green:hoglin z double 0.1 run scoreboard players operation $z light_green.main.math /= $2 light_green.main.math
function light_green:ride_hoglin/motion3 with storage light_green:hoglin
execute if score @s light_green.hoglin_space matches 4.. unless entity @s[tag=light_green.walk_check] run scoreboard players add @s light_green.hoglin_walk 1
execute unless entity @s[tag=light_green.walk_check] run scoreboard players add @s light_green.hoglin_walk 2
execute unless entity @s[tag=light_green.walk_check] run scoreboard players set @s light_green.hoglin_walk_time 2
execute unless entity @s[tag=light_green.walk_check] run tag @s add light_green.walk_check
