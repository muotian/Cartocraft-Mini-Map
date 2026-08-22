#排除實體
execute if entity @s[tag=aj.global.entity] run return fail
execute if entity @s[tag=donothing] run return fail

execute if entity @s[type=#no_hp] run return run function ordered_splinter_main:no_hp
execute if entity @s[type=!player] run return run function ordered_splinter_main:mob
execute if entity @s[type=player] run return run function ordered_splinter_main:player
