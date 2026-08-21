execute store result score $health light_green.main.math run data get entity @s Health
execute if score $health light_green.main.math <= $max_health_step1 light_green.main.math run scoreboard players add @s light_green.hoglin.shield 1
execute if score $health light_green.main.math <= $max_health_step2 light_green.main.math run scoreboard players add @s light_green.hoglin.shield 1
execute if score $health light_green.main.math <= $max_health_step3 light_green.main.math run scoreboard players add @s light_green.hoglin.shield 1
execute if score $health light_green.main.math <= $max_health_step4 light_green.main.math run scoreboard players add @s light_green.hoglin.shield 1
execute if score $health light_green.main.math <= $max_health_step5 light_green.main.math run scoreboard players add @s light_green.hoglin.shield 1