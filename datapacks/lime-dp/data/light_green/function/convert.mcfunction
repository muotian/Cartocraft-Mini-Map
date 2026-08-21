execute if entity @s[type=#light_green:no_hp] run return run function light_green:no_hp
execute if entity @s[type=!player] run return run function light_green:mob
execute if entity @s[type=player] run return run function light_green:player