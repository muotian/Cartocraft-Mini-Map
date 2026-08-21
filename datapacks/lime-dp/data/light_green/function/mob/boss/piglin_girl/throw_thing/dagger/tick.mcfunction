scoreboard players add @s light_green.main.math 1

execute if entity @s[tag=light_green.from_player] store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id
execute if entity @s[tag=light_green.from_player] run function light_green:mob/boss/piglin_girl/throw_thing/dagger/get_damage with storage light_green:weapon

execute if score @s light_green.mob.ai matches 3 if score @s light_green.main.math matches 10.. run kill @s

execute if entity @s[tag=light_green.hit] run return fail
execute if score $piglin_girl_level light_green.main.math matches 2 at @s run particle falling_dust{block_state:blackstone} ~ ~ ~ 0 0 0 0 1
execute at @s if block ^ ^ ^0.5 #light_green:not run tp @s ^ ^ ^0.5
execute at @s unless block ^ ^ ^0.5 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/down
function light_green:mob/boss/piglin_girl/throw_thing/dagger/damge
execute if entity @s[tag=light_green.hit] run return fail
execute if score $piglin_girl_level light_green.main.math matches 2 at @s run particle falling_dust{block_state:blackstone} ~ ~ ~ 0 0 0 0 1
execute at @s if block ^ ^ ^0.5 #light_green:not run tp @s ^ ^ ^0.5
execute at @s unless block ^ ^ ^0.5 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/down
function light_green:mob/boss/piglin_girl/throw_thing/dagger/damge
execute if entity @s[tag=light_green.hit] run return fail
execute if score $piglin_girl_level light_green.main.math matches 2 at @s run particle falling_dust{block_state:blackstone} ~ ~ ~ 0 0 0 0 1
execute at @s if block ^ ^ ^0.5 #light_green:not run tp @s ^ ^ ^0.5
execute at @s unless block ^ ^ ^0.5 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/down
function light_green:mob/boss/piglin_girl/throw_thing/dagger/damge
execute if entity @s[tag=light_green.hit] run return fail
execute if score $piglin_girl_level light_green.main.math matches 2 at @s run particle falling_dust{block_state:blackstone} ~ ~ ~ 0 0 0 0 1
execute at @s if block ^ ^ ^0.5 #light_green:not run tp @s ^ ^ ^0.5
execute at @s unless block ^ ^ ^0.5 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/down
function light_green:mob/boss/piglin_girl/throw_thing/dagger/damge
execute if entity @s[tag=light_green.hit] run return fail

execute if score @s light_green.main.math matches 100.. run kill @s

execute if entity @s[tag=light_green.from_player] run return run function light_green:mob/boss/piglin_girl/throw_thing/dagger/recursion_3

execute if score $piglin_girl_level light_green.main.math matches 1 run return fail 

execute if score @s light_green.mob.ai matches 2 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/recursion
execute if score @s light_green.mob.ai matches 1 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/recursion_3
execute if score @s light_green.mob.ai matches 3 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/recursion_3