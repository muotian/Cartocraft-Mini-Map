scoreboard players add @s mini_light.copper_lantern_timer 1
execute if score @s mini_light.copper_lantern_timer matches 200.. run scoreboard players add @s mini_light.lantern_energy 1
execute if score @s mini_light.copper_lantern_timer matches 200.. run scoreboard players operation @s mini_light.lantern_energy < $3 mini_light.lantern_energy
execute if score @s mini_light.copper_lantern_timer matches 200.. run scoreboard players set @s mini_light.copper_lantern_timer 0