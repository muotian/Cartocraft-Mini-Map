execute on attacker if entity @s[tag=!black.fake,tag=!black.real] run return run function black:bossfight/boss1/health/useless_attack

# calculate
execute store result storage black:temp dmg.value float 0.01 run scoreboard players operation @s black.boss_hpmax -= #hp icebird.core
execute store success storage black:temp dmg.is_damage byte 1 if score @s black.boss_hpmax matches 1..

# show entity

# reset
data modify entity @s[tag=icebird.boss1] Health set value 1024f
execute on attacker if entity @s[tag=black.real] run function black:bossfight/boss1/health/real_damage
execute on attacker if entity @s[tag=black.fake] run function black:bossfight/boss1/health/fake_damage
kill @s[tag=icebird.boss1,scores={black.boss_real.hp=..0,black.boss_fake.hp=..0}]
function black:bossfight/boss1/health/get_hpmax
data remove storage black:temp dmg