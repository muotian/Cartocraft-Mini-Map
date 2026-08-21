
execute facing entity @s feet as @n[type=marker,tag=light_green.crack.searching_marker] run rotate @s ~ ~
execute store result score $rot_x light_green.main.math run data get entity @n[type=marker,tag=light_green.crack.searching_marker] Rotation[0] 100
execute store result score $rot_y light_green.main.math run data get entity @n[type=marker,tag=light_green.crack.searching_marker] Rotation[1] 100

# Calculate by rotation degree

#scoreboard players operation $rot light_green.main.math = $rot_x light_green.main.math
#scoreboard players operation $rot light_green.main.math %= $3000 light_green.main.math
#execute unless score $rot light_green.main.math matches 276..2724 if score $rot_y light_green.main.math matches 0 run tag @s add light_green.crack_hit

# Calculate by MAGIC

scoreboard players operation $rot light_green.main.math = $rot_x light_green.main.math
scoreboard players operation $rot light_green.main.math /= $3000 light_green.main.math

$execute if score @s light_green.crack.player.entering.$(id) matches 1.. unless score @s light_green.crack.storage.rot.$(id) = $rot light_green.main.math if score $rot_y light_green.main.math matches 0 run tag @s add light_green.crack_hit

$scoreboard players operation @s light_green.crack.storage.rot.$(id) = $rot light_green.main.math

#tag @s add light_green.crack.searching.target.init

# if player doesn't have score
$execute unless score @s light_green.crack.player.entering.$(id) = @s light_green.crack.player.entering.$(id) run return run scoreboard players add @s light_green.crack.player.entering.$(id) 2
# if player already reset to zero
$execute if score @s light_green.crack.player.entering.$(id) matches 0 run return run scoreboard players add @s light_green.crack.player.entering.$(id) 2
# otherwise add one to keep it alive (entering state)
$scoreboard players add @s light_green.crack.player.entering.$(id) 1