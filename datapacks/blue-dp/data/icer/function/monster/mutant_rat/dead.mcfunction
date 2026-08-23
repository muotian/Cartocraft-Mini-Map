tag @s add icer.test_rat_dead
execute as @e[tag=icer.mutant_rat] if score @s aj.id = @n[tag=icer.test_rat_dead] aj.id run tag @n[tag=icer.test_rat_dead] remove icer.test_rat_dead
execute as @n[tag=icer.test_rat_dead] at @s run function icer:monster/mutant_rat/dead_damage


tag @s add icer.damage_rat
execute as @e[tag=icer.mutant_rat,type=endermite,distance=..10] run function icer:monster/mutant_rat/hurt
tag @s remove icer.damage_rat

