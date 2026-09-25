execute as @a at @s run function ordered_splinter_main:player
execute as @e[type=zombie,tag=!wool_purple.initialized] run function ordered_splinter_main:entity/init_mob
execute if score $reload wool_purple.main.math matches 1 run return fail
reload
