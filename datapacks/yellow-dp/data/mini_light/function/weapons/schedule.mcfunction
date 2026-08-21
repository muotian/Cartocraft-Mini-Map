execute at @e[tag=mini_light.blaze_totem] run playsound entity.ghast.shoot player @a ~ ~ ~ 1 1
execute as @e[tag=mini_light.blaze_totem] at @s run function mini_light:weapons/blaze/spark/summon
execute as @e[tag=mini_light.blaze_totem] at @s run function mini_light:weapons/blaze/spark/summon
execute as @e[tag=mini_light.blaze_totem] at @s run function mini_light:weapons/blaze/spark/summon

execute at @e[tag=mini_light.emerald_elf] run function mini_light:weapons/emerald/particle
execute at @e[tag=mini_light.emerald_elf] run particle heart ~ ~ ~ 1 0.1 1 1 7
execute at @e[tag=mini_light.emerald_elf] run effect give @a[distance=..5] regeneration 3 1 false

execute as @e[tag=mini_light.redstone_totem] at @s run function mini_light:weapons/redstone/laser {target:"@e[type=#mini_light:monster, type=!player,distance=..6]"}



schedule function mini_light:weapons/schedule 1s replace