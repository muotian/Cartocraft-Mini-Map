

execute if entity @s[tag=!brown_wool.thunder_rock_guard.end] unless entity @e[type=husk, tag=brown_wool.thunder_rock_guard0] unless entity @a[tag=brown_wool.thunder_rock_guard.player] run function brown_wool:entity/boss/thunder_rock_guard/reset

execute unless entity @e[type=husk, tag=brown_wool.thunder_rock_guard0] if entity @a[tag=brown_wool.thunder_rock_guard.player] run tag @s add brown_wool.thunder_rock_guard.end


execute if entity @s[tag=brown_wool.thunder_rock_guard.end] at @s run function brown_wool:entity/boss/thunder_rock_guard/end0

execute as @e[type=marker,tag=brown_wool.thunder_rock_guard.end1] at @s run function brown_wool:entity/boss/thunder_rock_guard/end1


execute if entity @s[type=marker, tag=brown_wool.thunder_rock_guard.terrain_2] at @s run function brown_wool:entity/boss/thunder_rock_guard/terrain

execute unless score @s brown_wool.thunder_rock_guard.kill matches 3.. run function brown_wool:entity/boss/thunder_rock_guard/as_kill


execute as @e[type=husk, tag=brown_wool.thunder_rock_guard0] at @s run function brown_wool:entity/boss/thunder_rock_guard/as_monster0

