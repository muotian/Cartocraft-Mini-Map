
scoreboard players add @s white.duration 1

execute if score @s white.duration matches 21 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 0.75
execute if score @s white.duration matches 21 run function white:mob/third_composer/1/pitch/a
execute if score @s white.duration matches 25 run function white:mob/third_composer/1/pitch/b
execute if score @s white.duration matches 29 run function white:mob/third_composer/1/pitch/c
execute if score @s white.duration matches 33 run function white:mob/third_composer/1/pitch/b
execute if score @s white.duration matches 37 run function white:mob/third_composer/1/pitch/a
execute if score @s white.duration matches 41 run function white:mob/third_composer/1/pitch/a
execute if score @s white.duration matches 45 run function white:mob/third_composer/1/pitch/b
execute if score @s white.duration matches 49 run function white:mob/third_composer/1/pitch/c
execute if score @s white.duration matches 53 run function white:mob/third_composer/1/pitch/b
execute if score @s white.duration matches 55.. run function white:mob/third_composer/1/clear