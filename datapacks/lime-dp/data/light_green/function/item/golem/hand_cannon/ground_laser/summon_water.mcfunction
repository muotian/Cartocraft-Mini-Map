summon minecraft:item_display ~ ~-1 ~ {Tags:["light_green","light_green.boss","light_green.boss.ground_laser","light_green.mob","light_green.from_player","light_green.new.mob","light_green.water"],item:{id:stick,components:{"item_model":"light_green:lazer_water"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f], translation:[0.0f,0.2f,0.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f], scale: [1f,1f,1f]},teleport_duration:1,interpolation_duration:1,brightness:{block:15,sky:15}}
playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.5 1
scoreboard players operation @n[tag=light_green.new.mob] light_green.player_id = @s light_green.player_id
tag @n[tag=light_green.new.mob] remove light_green.new.mob
kill @s