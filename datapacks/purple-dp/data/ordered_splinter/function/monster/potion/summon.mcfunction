playsound minecraft:entity.splash_potion.throw hostile @a ~ ~ ~ 2 1
summon splash_potion ~ ~ ~ {CustomName:[{"translate":"purple.potion","color":"#1fde32"}],Glowing:1b,Tags:["wool_purple.potion"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}
execute as @e[tag=wool_purple.potion] at @n[tag=wool_purple.target] facing entity @s feet positioned 0.0 0.0 0.0 as a11-1-1-1-1 run tp @s ^ ^0.4 ^-0.15
execute as @e[tag=wool_purple.potion] run data modify entity @s Motion set from entity a11-1-1-1-1 Pos