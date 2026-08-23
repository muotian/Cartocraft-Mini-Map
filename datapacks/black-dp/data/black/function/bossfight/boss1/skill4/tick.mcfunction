#icebird.b1s4
scoreboard players add @s icebird.core 1
execute if score @s icebird.core matches ..20 run tp @s ~ ~-0.4 ~
execute if score @s icebird.core matches 20 run tp @s ~ 155 ~
execute if score @s icebird.core matches ..20 run particle end_rod ~ ~ ~ 0.15 0 0.15 0.001 20 force
execute if score @s icebird.core matches 19 run playsound minecraft:block.ancient_debris.place block @a ~ ~ ~ 4 1
execute if score @s icebird.core matches 20 run scoreboard players set $boss1.stop icebird.boss1 0

execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 20 run function black:bossfight/boss1/skill4/timer {s:14}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 40 run function black:bossfight/boss1/skill4/timer {s:13}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 60 run function black:bossfight/boss1/skill4/timer {s:12}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 80 run function black:bossfight/boss1/skill4/timer {s:11}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 100 run function black:bossfight/boss1/skill4/timer {s:10}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 120 run function black:bossfight/boss1/skill4/timer {s:9}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 140 run function black:bossfight/boss1/skill4/timer {s:8}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 160 run function black:bossfight/boss1/skill4/timer {s:7}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 180 run function black:bossfight/boss1/skill4/timer {s:6}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 200 run function black:bossfight/boss1/skill4/timer {s:5}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 220 run function black:bossfight/boss1/skill4/timer {s:4}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 240 run function black:bossfight/boss1/skill4/timer {s:3}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 260 run function black:bossfight/boss1/skill4/timer {s:2}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 280 run function black:bossfight/boss1/skill4/timer {s:1}
execute if score $difficulty icebird.core matches 1..2 if score @s icebird.core matches 300 run function black:bossfight/boss1/skill4/wrong_attack

execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 20 run function black:bossfight/boss1/skill4/timer {s:11}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 40 run function black:bossfight/boss1/skill4/timer {s:10}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 60 run function black:bossfight/boss1/skill4/timer {s:9}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 80 run function black:bossfight/boss1/skill4/timer {s:8}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 100 run function black:bossfight/boss1/skill4/timer {s:7}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 120 run function black:bossfight/boss1/skill4/timer {s:6}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 140 run function black:bossfight/boss1/skill4/timer {s:5}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 160 run function black:bossfight/boss1/skill4/timer {s:4}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 180 run function black:bossfight/boss1/skill4/timer {s:3}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 200 run function black:bossfight/boss1/skill4/timer {s:2}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 220 run function black:bossfight/boss1/skill4/timer {s:1}
execute if score $difficulty icebird.core matches 3 if score @s icebird.core matches 240 run function black:bossfight/boss1/skill4/wrong_attack


#execute as @s[tag=icebird.b1s4_fake] at @s if entity @n[type=item_display,tag=icebird.b1s1_fake,distance=..1.2] run function black:bossfight/boss1/skill4/wrong_attack
#execute as @s[tag=icebird.b1s4_real] at @s if entity @n[type=item_display,tag=icebird.b1s1_real,distance=..1.2] run function black:bossfight/boss1/skill4/wrong_attack