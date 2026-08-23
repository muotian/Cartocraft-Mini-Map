scoreboard players enable @a icebird.dialogue
#pos
scoreboard players add $boss_spirit_pos icebird.boss1 1
execute as @e[type=minecraft:mannequin,tag=icebird.boss_spirit] at @s run function black:bossfight/npc_pose
#boss1 npc
execute as @n[type=minecraft:interaction,tag=icebird.boss1_spirit] on target at @s run function black:bossfight/boss1/dialogue1
execute as @a at @s if score @s icebird.dialogue matches 1 run function black:bossfight/boss1/dialogue2
execute as @a at @s if score @s icebird.dialogue matches 2 run function black:bossfight/boss1/dialogue3
#360
execute store result storage black:core 360 float 8 run scoreboard players add #360 icebird.core 1
execute store result storage black:core 360 float 1 if score #360 icebird.core matches 360 run scoreboard players set #360 icebird.core 0