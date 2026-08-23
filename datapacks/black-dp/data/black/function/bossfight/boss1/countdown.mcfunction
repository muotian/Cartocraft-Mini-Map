schedule function black:bossfight/boss1/countdown 1t

execute if score $phase icebird.boss1 matches 1 run scoreboard players add $boss1.skill1 icebird.boss1 1
execute if score $phase icebird.boss1 matches 1 if score $boss1.skill1 icebird.boss1 matches 400 run function black:bossfight/boss1/skill1/ini
execute if score $phase icebird.boss1 matches 1 if score $boss1.skill1 icebird.boss1 matches 760 run function black:bossfight/boss1/skill1/ini
execute if score $phase icebird.boss1 matches 1 if score $boss1.skill1 icebird.boss1 matches 840 run function black:bossfight/boss1/skill1/ini
execute if score $phase icebird.boss1 matches 1 if score $boss1.skill1 icebird.boss1 matches 865 run scoreboard players set $boss1.skill1 icebird.boss1 0 
execute if score $phase icebird.boss1 matches 3 run scoreboard players add $boss1.skill1 icebird.boss1 1
execute if score $phase icebird.boss1 matches 3 if score $boss1.skill1 icebird.boss1 matches 300 run function black:bossfight/boss1/skill1/ini
execute if score $phase icebird.boss1 matches 3 if score $boss1.skill1 icebird.boss1 matches 540 run function black:bossfight/boss1/skill1/ini
execute if score $phase icebird.boss1 matches 3 if score $boss1.skill1 icebird.boss1 matches 620 run function black:bossfight/boss1/skill1/ini
execute if score $phase icebird.boss1 matches 3 if score $boss1.skill1 icebird.boss1 matches 645 run scoreboard players set $boss1.skill1 icebird.boss1 0 


execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 1 run scoreboard players add $boss1.skill2 icebird.boss1 1
execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 3 run scoreboard players add $boss1.skill2 icebird.boss1 1
execute if score $boss1.stop icebird.boss1 matches 0 if score $boss1.skill2 icebird.boss1 matches 460 run function black:bossfight/boss1/skill2/ini

execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 1 run scoreboard players add $boss1.skill3 icebird.boss1 1
execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 3 run scoreboard players add $boss1.skill3 icebird.boss1 1
execute if score $boss1.stop icebird.boss1 matches 0 if score $boss1.skill3 icebird.boss1 matches 400 run function black:bossfight/boss1/skill3/ini
execute if score $boss1.stop icebird.boss1 matches 0 if score $boss1.skill3 icebird.boss1 matches 400.. run scoreboard players set $boss1.skill3 icebird.boss1 0

execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 3 run scoreboard players add $boss1.skill4 icebird.boss1 1
execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 3 if score $boss1.skill4 icebird.boss1 matches 400 run function black:bossfight/boss1/skill4/ini
execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 3 if score $boss1.skill4 icebird.boss1 matches 700 run function black:bossfight/boss1/skill4/ini
execute if score $boss1.stop icebird.boss1 matches 0 if score $phase icebird.boss1 matches 3 if score $boss1.skill4 icebird.boss1 matches 700 run scoreboard players set $boss1.skill4 icebird.boss1 0

execute if score $phase icebird.boss1 matches 1 run scoreboard players add $boss1.skill5 icebird.boss1 1
execute if score $phase icebird.boss1 matches 1 if score $boss1.skill5 icebird.boss1 matches 2000 run function black:bossfight/boss1/skill5/ini2

execute if score $phase icebird.boss1 matches 3 run scoreboard players add $boss1.skill5 icebird.boss1 1
execute if score $phase icebird.boss1 matches 3 if score $boss1.skill5 icebird.boss1 matches 2000 run function black:bossfight/boss1/skill5/ini2

execute if score $phase icebird.boss1 matches 1 if score $boss1.stop icebird.boss1 matches 0 if score #50hp icebird.boss1 > @n[tag=icebird.boss1] black.boss_real.hp run function black:bossfight/boss1/skill5/ini
execute if score $phase icebird.boss1 matches 1 if score $boss1.stop icebird.boss1 matches 0 if score #50hp icebird.boss1 > @n[tag=icebird.boss1] black.boss_fake.hp run function black:bossfight/boss1/skill5/ini

execute if score @n[type=zombie,tag=icebird.boss1] black.boss_real.hp matches ..0 run scoreboard players add $berserk.tick icebird.boss1 1
execute if score @n[type=zombie,tag=icebird.boss1] black.boss_fake.hp matches ..0 run scoreboard players add $berserk.tick icebird.boss1 1
execute if score $berserk.tick icebird.boss1 matches 160 run function black:bossfight/boss1/health/berserk

stopsound @a music black:mount_area

execute unless entity @n[type=zombie,tag=icebird.boss1] run function black:bossfight/boss1/victory
