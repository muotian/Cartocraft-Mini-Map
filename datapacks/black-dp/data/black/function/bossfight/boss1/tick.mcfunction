schedule function black:bossfight/boss1/tick 1t
execute as @e[type=marker,tag=icebird.b1s1_corner.target] at @s run function black:bossfight/boss1/skill1/tick
execute as @e[type=item_display,tag=icebird.b1s1] at @s run function black:bossfight/boss1/skill1/tick2
execute as @e[type=marker,tag=icebird.b1s1_hard] at @s run function black:bossfight/boss1/skill1/tick3
execute as @e[type=marker,tag=icebird.b1s2] at @s run function black:bossfight/boss1/skill2/tick
execute as @e[type=item_display,tag=icebird.b1s3] at @s run function black:bossfight/boss1/skill3/tick
execute as @e[type=zombie,tag=icebird.b1s3] at @s run function black:bossfight/boss1/skill3/tick
execute as @e[type=zombie,tag=icebird.b1s4] at @s run function black:bossfight/boss1/skill4/tick
execute as @e[type=zombie,tag=icebird.b1s5_act] at @s run function black:bossfight/boss1/skill5/tick
execute as @e[type=item_display,tag=icebird.b1s5_circle] at @s run function black:bossfight/boss1/skill5/tick2
execute as @e[type=item_display,tag=icebird.b1s5,tag=!icebird.b1s5_circle] at @s run function black:bossfight/boss1/skill5/tick3

execute if score $boss1.stop icebird.boss1 matches 1 run bossbar set icebird.boss1_skill players @a
execute if score $boss1.stop icebird.boss1 matches 1 run bossbar set icebird.boss1_skill visible true
execute if score $boss1.stop icebird.boss1 matches 1 store result bossbar icebird.boss1_skill value run scoreboard players add $boss1.stop.tick icebird.boss1 1
execute if score $boss1.stop icebird.boss1 matches 0 run bossbar set icebird.boss1_skill visible false
execute if score $boss1.stop icebird.boss1 matches 0 store result bossbar icebird.boss1_skill value run scoreboard players set $boss1.stop.tick icebird.boss1 0

execute if score $boss1.stop icebird.boss1 matches 1 run attribute @n[tag=icebird.boss1] movement_speed modifier add boss1stop -100 add_value
execute if score $boss1.stop icebird.boss1 matches 0 run attribute @n[tag=icebird.boss1] movement_speed modifier remove boss1stop

execute as @e[type=zombie,tag=icebird.boss1] at @s run function black:bossfight/boss1/health/main