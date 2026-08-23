

#洗衣機(@s)停1秒>衝刺5格>if玩家碰到>被吃>持續扣血3秒>噴出
execute if entity @s run scoreboard players add @s green_wool.mobskill2 1
#停1秒
execute if entity @s[scores={green_wool.mobskill2=1..15}] run data merge entity @s {NoAI:1b}
execute at @s if entity @s[scores={green_wool.mobskill2=1..15}] facing entity @n[type=player] feet run tp @s ~ ~ ~ ~ ~
execute at @s if entity @s[scores={green_wool.mobskill2=1}] as @e[tag=green_wool.washing_machine-AJ,distance=..0.5] run function animated_java:washing_machice/animations/skill_wait/play
#衝刺5格
execute at @s if entity @s[scores={green_wool.mobskill2=20},tag=!green_wool.washing_machine_y] as @e[tag=green_wool.washing_machine-AJ,distance=..0.5] run function animated_java:washing_machice/animations/skill/play
execute at @s if entity @s[scores={green_wool.mobskill2=20..30},tag=!green_wool.washing_machine_y] run tp @s ^ ^ ^0.5
#if玩家碰到
execute at @s if entity @s[scores={green_wool.mobskill2=20..30}] if entity @p[distance=..1] run tag @s add green_wool.washing_machine_y
#if玩家死亡
execute at @s if entity @s[scores={green_wool.mobskill2=20..80},tag=green_wool.washing_machine_y] as @p[tag=green_wool.washing_machine_skill_player] at @s if entity @n[scores={green_wool.mobskill2=20..80},tag=green_wool.washing_machine_y,distance=2..] run tag @s remove green_wool.washing_machine_skill_player
#被吃
execute at @s if entity @s[scores={green_wool.mobskill2=30},tag=green_wool.washing_machine_y] as @e[tag=green_wool.washing_machine-AJ,distance=..0.5] run function animated_java:washing_machice/animations/skill_wait/play
execute at @s if entity @s[scores={green_wool.mobskill2=20..80},tag=green_wool.washing_machine_y] as @p[distance=..1,tag=!green_wool.washing_machine_y] run tag @s add green_wool.washing_machine_skill_player
execute at @s if entity @s[scores={green_wool.mobskill2=20..80},tag=green_wool.washing_machine_y] as @p[tag=green_wool.washing_machine_skill_player] run tp @s ~ ~-1 ~
#扣血
execute at @s if entity @s[scores={green_wool.mobskill2=20..80},tag=green_wool.washing_machine_y] run damage @p[tag=green_wool.washing_machine_skill_player] 15 mob_attack by @s
#噴出
execute at @s if entity @s[scores={green_wool.mobskill2=80},tag=green_wool.washing_machine_y] as @e[tag=green_wool.washing_machine-AJ,distance=..0.5] run function animated_java:washing_machice/animations/move/play
execute at @s if entity @s[scores={green_wool.mobskill2=80..},tag=green_wool.washing_machine_y] as @p[tag=green_wool.washing_machine_skill_player] run tp @s ^ ^2 ^0
execute at @s if entity @s[scores={green_wool.mobskill2=80..},tag=green_wool.washing_machine_y] as @p[tag=green_wool.washing_machine_skill_player] run tp @s ^ ^2 ^1
execute if entity @s[tag=green_wool.washing_machine_y,scores={green_wool.mobskill2=80..}] run tag @p[tag=green_wool.washing_machine_skill_player] remove green_wool.washing_machine_skill_player
execute if entity @s[tag=green_wool.washing_machine_y,scores={green_wool.mobskill2=80..}] run scoreboard players set @s green_wool.mobskill 0
execute if entity @s[tag=green_wool.washing_machine_y,scores={green_wool.mobskill2=80..}] run data remove entity @s NoAI
execute if entity @s[scores={green_wool.mobskill2=80..}] run tag @s remove green_wool.washing_machine_y
execute if entity @s[scores={green_wool.mobskill2=80..}] run scoreboard players reset @s green_wool.mobskill2
#if玩家沒碰到
execute at @s if entity @s[scores={green_wool.mobskill2=30},tag=!green_wool.washing_machine_y] as @e[tag=green_wool.washing_machine-AJ,distance=..0.5] run function animated_java:washing_machice/animations/move/play
execute at @s if entity @s[scores={green_wool.mobskill2=30..},tag=!green_wool.washing_machine_y] run tag @s remove green_wool.washing_machine_y
execute at @s if entity @s[scores={green_wool.mobskill2=30..},tag=!green_wool.washing_machine_y] run data remove entity @s NoAI
execute at @s if entity @s[scores={green_wool.mobskill2=30..},tag=!green_wool.washing_machine_y] run scoreboard players set @s green_wool.mobskill 0
execute at @s if entity @s[scores={green_wool.mobskill2=30..},tag=!green_wool.washing_machine_y] run scoreboard players reset @s green_wool.mobskill2

