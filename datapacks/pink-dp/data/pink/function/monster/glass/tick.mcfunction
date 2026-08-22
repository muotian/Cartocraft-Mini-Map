#
effect give @s invisibility infinite 0 true
execute unless predicate pink:passenger run kill @s

#
scoreboard players remove $cd1 pink.monster.glass.skill 1
scoreboard players remove $cd2 pink.monster.glass.skill 1

execute if score $cd1 pink.monster.glass.skill matches ..0 if entity @p[distance=..15] run function pink:monster/glass/skill1
execute if score $cd2 pink.monster.glass.skill matches ..0 if entity @p[distance=..15] run function pink:monster/glass/skill2

#
execute as @e[tag=pink_mobs.glass_bullet] at @s run function pink:monster/glass/bullet_tick

#
execute as @e[tag=pink.glass,tag=pink.glass.armor] if predicate pink:hurt at @s run function pink:monster/glass/armor

