#
execute as @n[tag=pink.death.text] rotated as @n[tag=pink.death] run tp @s ~ ~2 ~ ~ ~

# Skill
execute if score $cd pink.monster.death.skill matches 1.. run scoreboard players remove $cd pink.monster.death.skill 1
execute if score $charge pink.monster.death.skill matches 1.. run scoreboard players remove $charge pink.monster.death.skill 1

execute if score $cd pink.monster.death.skill matches ..0 if score $s pink.monster.death.skill matches 1 if entity @p[distance=..15] run function pink:monster/death/s1_charge
execute if score $cd pink.monster.death.skill matches ..0 if score $s pink.monster.death.skill matches 2 if entity @p[distance=..15] run function pink:monster/death/s2_charge
execute if score $cd pink.monster.death.skill matches ..0 if score $s pink.monster.death.skill matches 3 if entity @p[distance=..15] run function pink:monster/death/s3_charge


execute if score $charge pink.monster.death.skill matches ..0 if score $s pink.monster.death.skill matches 1 if entity @p[distance=..15] run function pink:monster/death/s1_cast
execute if score $charge pink.monster.death.skill matches ..0 if score $s pink.monster.death.skill matches 2 if entity @p[distance=..15] run function pink:monster/death/s2_cast
execute if score $charge pink.monster.death.skill matches ..0 if score $s pink.monster.death.skill matches 3 if entity @p[distance=..15] run function pink:monster/death/s3_cast

execute if score $charge pink.monster.death.skill matches 5.. facing entity @p feet rotated ~ 0 run function pink:monster/death/charge_line

# Dash
execute if score $dash pink.monster.death.skill matches 1.. anchored eyes run function pink:monster/death/dash_particle
execute if score $dash pink.monster.death.skill matches 1.. run scoreboard players remove $dash pink.monster.death.skill 1


