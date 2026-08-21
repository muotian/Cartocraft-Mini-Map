execute store result score $Onground light_green.main.math run data get entity @s OnGround
execute if score @s light_green.hoglin_space matches 1..3 if score $Onground light_green.main.math matches 1 run function light_green:ride_hoglin/jump {y:0.75}
execute if score @s light_green.hoglin_space matches 1..3 if score $Onground light_green.main.math matches 1 run tag @s add light_green.jump_check


execute if score @s light_green.hoglin_space matches 1..3 run return run scoreboard players reset @s light_green.hoglin_space


scoreboard players reset @s light_green.hoglin_space