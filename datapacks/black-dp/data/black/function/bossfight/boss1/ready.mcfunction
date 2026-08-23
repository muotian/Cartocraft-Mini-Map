schedule function black:bossfight/boss1/ready 1s
title @a times 0 1.5s 0
scoreboard players reset @a icebird.DeathInBoss
scoreboard players add $boss1.ready icebird.boss1 1
execute if score $boss1.ready icebird.boss1 matches 1 at @a run title @a title {"text":"3","color":"green","bold":true}
execute if score $boss1.ready icebird.boss1 matches 1 at @a run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 100 2
execute if score $boss1.ready icebird.boss1 matches 1 at @n[type=minecraft:armor_stand,tag=icebird.boss1.spec] run function black:bossfight/boss1/border
execute if score $boss1.ready icebird.boss1 matches 2 at @a run title @a title {"text":"2","color":"yellow","bold":true}
execute if score $boss1.ready icebird.boss1 matches 2 at @a run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 100 2
execute if score $boss1.ready icebird.boss1 matches 3 at @a run title @a title {"text":"1","color":"red","bold":true}
execute if score $boss1.ready icebird.boss1 matches 3 at @a run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 100 2
execute if score $boss1.ready icebird.boss1 matches 4.. run function black:bossfight/boss1/start
#出口
