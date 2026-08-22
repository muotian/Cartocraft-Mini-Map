execute if score $filter wool_purple.find_look.temp matches 1.. as @e[tag=wool_purple.find_looking.candidate,tag=wool_purple.find_looking.result] run function ordered_splinter:box/internal/filter/check_filter
execute if score $filter wool_purple.find_look.temp matches 0 run tag @e[tag=wool_purple.find_looking.candidate,tag=wool_purple.find_looking.result] add wool_purple.find_looking.in_filter

execute store success score $success wool_purple.find_look.temp if predicate ordered_splinter:can_see_filter

execute if score $success wool_purple.find_look.temp matches 0 run tag @e[tag=wool_purple.find_looking.candidate,tag=wool_purple.find_looking.in_filter] remove wool_purple.find_looking.result
execute if score $success wool_purple.find_look.temp matches 1 run tag @e[tag=wool_purple.find_looking.candidate,tag=!wool_purple.find_looking.in_filter] remove wool_purple.find_looking.result

scoreboard players operation $filter wool_purple.find_look.temp *= $2 wool_purple.find_look.const
execute if score $filter wool_purple.find_look.temp matches 0 run scoreboard players set $filter wool_purple.find_look.temp 1

execute if entity @e[tag=wool_purple.find_looking.candidate,tag=wool_purple.find_looking.result,limit=1] if score $filter wool_purple.find_look.temp <= $max wool_purple.find_look.temp run function ordered_splinter:box/internal/filter/iteration
