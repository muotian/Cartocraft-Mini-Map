effect clear @s strength
effect clear @s weakness
$execute if score $strength_time light_green.main.math matches -1 run effect give @s strength $(strength_time) $(strength_level) $(strength_icon)
$execute if score $strength_time light_green.main.math matches 1.. run effect give @s strength $(strength_time) $(strength_level) $(strength_icon)
$execute if score $weakness_time light_green.main.math matches -1 run effect give @s strength $(weakness_time) $(weakness_level) $(weakness_icon)
$execute if score $weakness_time light_green.main.math matches 1.. run effect give @s strength $(weakness_time) $(weakness_level) $(weakness_icon)
tag @s remove light_green.take_dagger