scoreboard players operation @n[tag=light_green.new.mob] light_green.bullet_id = $bullet_id light_green.main.math
$tag @n[tag=light_green.target] add light_green.bullet.$(id).target
$execute at @s rotated ~180 0 run rotate @n[tag=light_green.new.mob] ~$(rotate1) ~$(rotate2)