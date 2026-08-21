scoreboard players operation @n[tag=light_green.new.mob] light_green.bullet_id = $bullet_id light_green.main.math
scoreboard players operation @n[tag=light_green.new.mob] light_green.player_id = @s light_green.player_id
execute as @n[tag=light_green.new.mob] if entity @s[tag=light_green.bullet.hoglin_target] run tag @s add light_green.bullet.attack
$tag @n[tag=light_green.ready_to.target] add light_green.bullet.$(id).target
$execute at @s rotated ~180 0 run rotate @n[tag=light_green.new.mob] ~$(rotate1) ~$(rotate2)