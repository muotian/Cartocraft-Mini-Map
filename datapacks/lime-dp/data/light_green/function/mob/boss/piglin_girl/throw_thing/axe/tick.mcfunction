scoreboard players add @s light_green.main.math 1

execute if entity @s[tag=light_green.from_player] store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id
execute if entity @s[tag=light_green.from_player] run function light_green:mob/boss/piglin_girl/throw_thing/axe/get_damage with storage light_green:weapon


execute if entity @s[tag=light_green.hit] run return fail
execute at @s if block ^ ^ ^0.35 #light_green:not run tp @s ^ ^ ^0.35
execute at @s unless block ^ ^ ^0.35 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/axe/down
function light_green:mob/boss/piglin_girl/throw_thing/axe/damge
execute if entity @s[tag=light_green.hit] run return fail
execute at @s if block ^ ^ ^0.35 #light_green:not run tp @s ^ ^ ^0.35
execute at @s unless block ^ ^ ^0.35 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/axe/down
function light_green:mob/boss/piglin_girl/throw_thing/axe/damge
execute if entity @s[tag=light_green.hit] run return fail
execute at @s if block ^ ^ ^0.35 #light_green:not run tp @s ^ ^ ^0.35
execute at @s unless block ^ ^ ^0.35 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/axe/down
function light_green:mob/boss/piglin_girl/throw_thing/axe/damge
execute if entity @s[tag=light_green.hit] run return fail
execute at @s if block ^ ^ ^0.35 #light_green:not run tp @s ^ ^ ^0.35
execute at @s unless block ^ ^ ^0.35 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/axe/down
function light_green:mob/boss/piglin_girl/throw_thing/axe/damge
execute if entity @s[tag=light_green.hit] run return fail

execute on passengers at @s run rotate @s ~50 ~

execute if score @s light_green.main.math matches 100.. on passengers run kill @s
execute if score @s light_green.main.math matches 100.. run kill @s