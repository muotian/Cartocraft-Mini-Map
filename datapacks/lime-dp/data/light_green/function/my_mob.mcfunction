function light_green:hurt_detect/0

execute if entity @s[tag=light_green.mob] run function light_green:mob/convert
execute if entity @s[tag=light_green.spawn] run function light_green:mob/spawn