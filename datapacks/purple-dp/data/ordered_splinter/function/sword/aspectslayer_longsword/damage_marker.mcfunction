scoreboard players add @s wool_purple.kill_carpet 1
execute if score @s wool_purple.kill_carpet matches 100 run kill @s
execute if block ^ ^-0.1 ^ #ordered_splinter:transparent run tp @s ^ ^-0.2 ^