scoreboard players set $target light_green.main.math 0
execute store result score test light_green.main.math on target if entity @s
execute if score $target light_green.main.math matches 1 unless entity @s[tag=light_green.have_target] run effect give @s speed 1 0 true
execute if score $target light_green.main.math matches 1 run tag @s add light_green.have_target
execute if score $target light_green.main.math matches 0 run tag @s remove light_green.have_target
execute on target run tag @s remove light_green.target