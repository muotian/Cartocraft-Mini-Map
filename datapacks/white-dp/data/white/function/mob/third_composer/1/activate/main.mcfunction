
scoreboard players add @s white.duration 1

execute at @s run function white:mob/third_composer/1/activate/2
execute at @s run function white:mob/third_composer/1/activate/2
execute at @s run function white:mob/third_composer/1/activate/2
execute at @s run function white:mob/third_composer/1/activate/2
execute at @s run function white:mob/third_composer/1/activate/2
execute at @s run function white:mob/third_composer/1/activate/2

execute if score @s white.duration matches 10.. run kill @s

# fx
scoreboard players operation #mod white.main = @s white.duration
scoreboard players operation #mod white.main %= #3 white.main
execute if score #mod white.main matches 1.. run return fail
particle minecraft:trial_spawner_detection_ominous ^ ^ ^2 0 0 0 0 1 force
particle minecraft:trial_spawner_detection_ominous ^ ^ ^-2 0 0 0 0 1 force