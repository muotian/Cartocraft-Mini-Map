$summon minecraft:item_display ~ ~ ~ {Tags:["light_green","light_green.boss.piglin_girl.shadow_player","light_green.new.mob","light_green.from_player_$(id)"],item:{id:egg,components:{"item_model":"light_green:shadow"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0.5,0]}}
execute at @s run rotate @n[tag=light_green.new.mob] ~ 0
scoreboard players operation @n[tag=light_green.new.mob] light_green.player_id = @s light_green.player_id
execute as @n[tag=light_green.new.mob] run tag @s remove light_green.new.mob
