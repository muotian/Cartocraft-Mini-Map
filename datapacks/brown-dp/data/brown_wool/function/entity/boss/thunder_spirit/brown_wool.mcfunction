

scoreboard players add @s brown_wool.thunder_spirit.brown_wool 1


execute if score @s brown_wool.thunder_spirit.brown_wool matches 1..33 run tp @s ~ ~0.006 ~
execute if score @s brown_wool.thunder_spirit.brown_wool matches 34..66 run tp @s ~ ~-0.006 ~


rotate @s facing ^0.25 ^ ^5

execute if score @s brown_wool.thunder_spirit.brown_wool matches 66.. run scoreboard players reset @s brown_wool.thunder_spirit.brown_wool
