$summon minecraft:item_display ~ ~ ~ {Tags:["light_green.crack_model","light_green.new.crack","light_green"],item:{id:"black_concrete"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0.01,0],scale:[0.25,0,$(score)]}}
rotate @n[tag=light_green.new.crack] ~ ~
scoreboard players operation @n[tag=light_green.new.crack] light_green.crack_id = @s light_green.crack_id
tag @n[tag=light_green.new.crack] remove light_green.new.crack