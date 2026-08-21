$execute rotated ~ 0 positioned ^ ^ ^ positioned ~-0.5 ~ ~-0.5 if entity @n[type=!#light_green:no_hp,dy=-9] as @n[type=!#light_green:no_hp,dy=-9] unless score @s light_green.team matches 1 run damage @s $(laser_damage) light_green:laser by @n[tag=light_green.boss.graud_golem]
$execute rotated ~ 0 positioned ^ ^ ^0.5 positioned ~-0.5 ~ ~-0.5 if entity @n[type=!#light_green:no_hp,dy=-9] as @n[type=!#light_green:no_hp,dy=-9] unless score @s light_green.team matches 1 run damage @s $(laser_damage) light_green:laser by @n[tag=light_green.boss.graud_golem]
particle end_rod ^ ^ ^ 0 0 0 10000 1
particle end_rod ^ ^ ^0.5 0 0 0 10000 1

particle end_rod ^ ^-1 ^ 0 0 0 10000 1
particle end_rod ^ ^-1 ^0.5 0 0 0 10000 1

particle end_rod ^ ^-2 ^ 0 0 0 10000 1
particle end_rod ^ ^-2 ^0.5 0 0 0 10000 1

particle end_rod ^ ^-3 ^ 0 0 0 10000 1
particle end_rod ^ ^-3 ^0.5 0 0 0 10000 1

particle end_rod ^ ^-4 ^ 0 0 0 10000 1
particle end_rod ^ ^-4 ^0.5 0 0 0 10000 1

particle end_rod ^ ^-5 ^ 0 0 0 10000 1
particle end_rod ^ ^-5 ^0.5 0 0 0 10000 1

particle end_rod ^ ^-6 ^ 0 0 0 10000 1
particle end_rod ^ ^-6 ^0.5 0 0 0 10000 1

particle end_rod ^ ^-7 ^ 0 0 0 10000 1
particle end_rod ^ ^-7 ^0.5 0 0 0 10000 1

scoreboard players add $laser light_green.main.math 1
execute unless block ^ ^ ^1 #light_green:not run return fail
execute unless score $laser light_green.main.math matches 40.. positioned ^ ^ ^1 rotated ~ 0 run function light_green:mob/boss/graud_golem/laser/1 with storage light_green:boss