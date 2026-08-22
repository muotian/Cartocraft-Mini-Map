execute as @e at @s run function ordered_splinter_main:convert
execute if score $reload wool_purple.main.math matches 1 run return fail
reload