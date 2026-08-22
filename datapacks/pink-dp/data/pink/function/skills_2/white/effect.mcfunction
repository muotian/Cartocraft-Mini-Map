#
execute rotated 0 0 run function animated_java:pink_white2/summon {args: {animation: '1', start_animation: true}}
scoreboard players operation @s aj.id = aj.last_id aj.id

playsound pink:white_skill2 player @s ~ ~ ~ 0.7 1
playsound pink:white_skill1 player @s ~ ~ ~ 0.8 1.5
playsound pink:white_skill3 player @s ~ ~ ~ 0.7 1
#
scoreboard players set @s pink.star.skill.cd 280

#
scoreboard players remove @a[distance=..8] pink.star.skill.cd 60
execute as @a[scores={pink.star.skill.cd=..20}] run scoreboard players set @s pink.star.skill.cd 20

#
scoreboard players set @a[distance=..8] pink.mana_reduce.white_skill 10
scoreboard players set @a[distance=..8] pink.white.skill2.duration 260

#
effect give @a[distance=..8] absorption 15 0


