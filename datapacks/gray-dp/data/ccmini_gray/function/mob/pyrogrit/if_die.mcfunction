tag @s add gray.temp
execute store result score @s gray.pyrogrit.amount on vehicle run scoreboard players get @s gray.pyrogrit.amount
execute on vehicle on passengers run tag @s remove gray.temp
execute as @s[tag=gray.temp] at @s positioned ~ ~-0.5 ~ run function ccmini_gray:mob/pyrogrit/summon
tag @s remove gray.temp