#綁AJ動畫

execute at @e[tag=green_wool.washing_machine] as @n[tag=green_wool.washing_machine-AJ] if score @s green_wool.washing_machine-AJ = @n green_wool.washing_machine-AJ run tp @s ~ ~ ~ ~ 0

execute at @e[tag=green_wool.broken,tag=green_wool.washing_machine] as @e[tag=green_wool.washing_machine-AJ,distance=..0.5] run function animated_java:washing_machice/animations/skill_wait/play
#技能時間
execute as @e[tag=green_wool.washing_machine] run scoreboard players add @s green_wool.mobskill 1
#發動技能
execute as @e[tag=green_wool.washing_machine,scores={green_wool.mobskill=300..}] run function green_wool:washing_machine/washing_machine_skill