execute if entity @n[tag=brown_wool.thunder_shadow_guard.terrain ,distance=18..] run kill @s

execute unless score @s brown_wool.thunder_shadow_guard.skill3 matches 1.. store result score @s brown_wool.thunder_shadow_guard.skill3 run random value 1..299

execute if score @s brown_wool.thunder_shadow_guard.skill3 matches 1..299 rotated ~ 0 run tp @s ^ ^ ^0.5 ~2 ~

execute positioned ~ ~1 ~ as @a[distance=..1.6] run damage @s 12 brown_wool:player_attack by @n[tag=brown_wool.thunder_shadow_guard.skill3.2]

execute if score @s brown_wool.thunder_shadow_guard.skill3 matches 300 run rotate @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player]

execute if score @s brown_wool.thunder_shadow_guard.skill3 matches 305 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle3

execute if score @s brown_wool.thunder_shadow_guard.skill3 matches 310.. rotated ~ 0 run tp @s ^ ^ ^1.8

scoreboard players add @s brown_wool.thunder_shadow_guard.skill3 1





