execute at @s run particle falling_dust{block_state:blackstone} ~ ~ ~ 0 0 0 0 1
execute at @s if block ^ ^ ^0.5 #light_green:not run tp @s ^ ^ ^0.5
execute at @s unless block ^ ^ ^0.5 #light_green:not positioned ^ ^ ^-1 run function light_green:mob/boss/piglin_girl/throw_thing/dagger/down
function light_green:mob/boss/piglin_girl/throw_thing/dagger/damge
execute if entity @s[tag=light_green.hit] run return fail
execute at @s if block ^ ^ ^0.5 #light_green:not run function light_green:mob/boss/piglin_girl/throw_thing/dagger/recursion_3