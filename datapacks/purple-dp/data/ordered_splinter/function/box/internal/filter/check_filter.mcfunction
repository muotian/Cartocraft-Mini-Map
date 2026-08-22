scoreboard players operation $selected wool_purple.find_look.temp = @s wool_purple.find_look.temp
scoreboard players operation $selected wool_purple.find_look.temp /= $filter wool_purple.find_look.temp
scoreboard players operation $selected wool_purple.find_look.temp %= $2 wool_purple.find_look.const
tag @s remove wool_purple.find_looking.in_filter
execute if score $selected wool_purple.find_look.temp matches 1 run tag @s add wool_purple.find_looking.in_filter