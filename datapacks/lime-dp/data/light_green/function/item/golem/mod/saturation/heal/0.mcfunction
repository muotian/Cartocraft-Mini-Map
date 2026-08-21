scoreboard players operation $heal light_green.main.math = @s light_green.food
scoreboard players remove $heal light_green.main.math 6
scoreboard players operation $heal light_green.main.math /= $2 light_green.main.math
scoreboard players operation @s light_green.heal = $heal light_green.main.math
