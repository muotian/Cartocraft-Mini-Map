

scoreboard players add @s brown_wool.thunder_spirit.attack1 1

particle firework ~ ~ ~ 0.0 0.0 0.0 0.1 3

execute at @s facing entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=7..] eyes run tp @s ^ ^ ^0.5
execute at @s facing entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=..7] feet run tp @s ^ ^ ^0.5
rotate @s ~10 ~


execute if entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=..4.8] run particle explosion ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=..4.8] at @s as @a run playsound entity.generic.explode player
execute if entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=..4.8] run damage @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1] 1 generic_kill
execute if entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=..4.8] run damage @e[type=vex, tag=brown_wool.thunder_spirit2,limit=1] 1 generic_kill
execute if entity @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1,distance=..4.8] run kill @s


execute if score @s brown_wool.thunder_spirit.attack1 matches 300.. run kill @s





