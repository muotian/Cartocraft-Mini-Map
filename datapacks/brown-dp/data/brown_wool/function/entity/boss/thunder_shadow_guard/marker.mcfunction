

execute if entity @s[tag=!brown_wool.thunder_shadow_guard.end] unless entity @e[type=wither_skeleton, tag=brown_wool.thunder_shadow_guard0] unless entity @a[tag=brown_wool.thunder_shadow_guard.player] run function brown_wool:entity/boss/thunder_shadow_guard/reset

execute unless entity @e[type=wither_skeleton, tag=brown_wool.thunder_shadow_guard0] if entity @a[tag=brown_wool.thunder_shadow_guard.player] run tag @s add brown_wool.thunder_shadow_guard.end


execute if entity @s[tag=brown_wool.thunder_shadow_guard.end] at @s run function brown_wool:entity/boss/thunder_shadow_guard/end0

execute as @e[type=marker,tag=brown_wool.thunder_shadow_guard.end1] at @s run function brown_wool:entity/boss/thunder_shadow_guard/end1


execute if entity @s[type=marker, tag=brown_wool.thunder_shadow_guard.terrain_2] at @s run function brown_wool:entity/boss/thunder_shadow_guard/terrain

execute unless score @s brown_wool.thunder_shadow_guard.kill matches 3.. run function brown_wool:entity/boss/thunder_shadow_guard/as_kill


execute as @e[type=wither_skeleton, tag=brown_wool.thunder_shadow_guard0] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_monster0

