execute on target run tag @s add light_green.target
execute if entity @e[tag=light_green.target,distance=..50,limit=1] unless entity @s[tag=light_green.have_target] run effect give @s speed 1 0 true
execute if entity @e[tag=light_green.target,distance=..50,limit=1] run tag @s add light_green.have_target
execute unless entity @e[tag=light_green.target,distance=..50,limit=1] run tag @s remove light_green.have_target
execute on target run tag @s remove light_green.target