rotate @s ~5 ~
team join wool_purple.item_display
execute at @a[tag=wool_purple.isaiah_ability_2] run teleport @s ~ ~6.5 ~
scoreboard players add @s wool_purple.kill_isaiah 1
execute if score @s wool_purple.kill_isaiah matches 273 run data merge entity @s {start_interpolation:10,interpolation_duration:20,transformation:[0.75f,0f,0f,0f,0f,0.75f,0f,0f,0f,0f,0.75f,0f,0f,0f,0f,1f]} 
execute if score @s wool_purple.kill_isaiah matches 300 run function ordered_splinter:sword/isaiah/ability_2_end
scoreboard players add @s wool_purple.heartbeat 1
execute if score @s wool_purple.heartbeat matches 15 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 0.1
execute if score @s wool_purple.heartbeat matches 15 run scoreboard players reset @s wool_purple.heartbeat