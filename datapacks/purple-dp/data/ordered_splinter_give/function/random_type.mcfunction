function ordered_splinter_main:random {math1:1,math2:2}
execute if score $random wool_purple.main.math matches 1 run return run data modify storage give:weapon type set value "sword"
execute if score $random wool_purple.main.math matches 2 run return run data modify storage give:weapon type set value "gloves"