

execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 51..170 run scoreboard players add @s brown_wool.thunder_rock_guard.skill3.1 1
scoreboard players add @s brown_wool.thunder_rock_guard.skill3.2 1

execute if score @s brown_wool.thunder_rock_guard.skill3.1 matches 2.. as @a[tag=brown_wool.thunder_rock_guard.player] at @s facing entity @e[type=husk, tag=brown_wool.thunder_rock_guard,limit=1] feet rotated ~ 0 if block ^ ^ ^1 air run tp @s ^ ^ ^1


execute if score @s brown_wool.thunder_rock_guard.skill3.1 matches 2.. run scoreboard players reset @s brown_wool.thunder_rock_guard.skill3.1


execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 1..50 rotated ~ 0 run function brown_wool:entity/boss/thunder_rock_guard/skill_particle3.1

execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 51..170 run particle flame ^ ^ ^ 10 5 10 0.5 20

execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 51..170 as @a[tag=brown_wool.thunder_rock_guard.player,distance=..2] run damage @s 0.1 brown_wool:bypasses_cooldown by @e[type=husk, tag=brown_wool.thunder_rock_guard,limit=1]


execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 171..200 rotated ~ 0 run function brown_wool:entity/boss/thunder_rock_guard/skill_particle3.2

execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 200 run particle explosion ~ ~ ~ 12.0 3.0 12.0 0.1 600
execute if score @s brown_wool.thunder_rock_guard.skill3.2 matches 200 as @a[tag=brown_wool.thunder_rock_guard.player,distance=..15.2] run damage @s 30 brown_wool:bypasses_cooldown by @e[type=husk, tag=brown_wool.thunder_rock_guard,limit=1]

