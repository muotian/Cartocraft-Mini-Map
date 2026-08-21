# 執行者、執行位置是機關槍
scoreboard players remove @s[scores={mini_light.machine_gun.cd=1..}] mini_light.machine_gun.cd 1

execute as @s[scores={mini_light.machine_gun.cd=0,mini_light.machine_gun.last=1..}] run function mini_light:monster/machine_gun/summon_arrow