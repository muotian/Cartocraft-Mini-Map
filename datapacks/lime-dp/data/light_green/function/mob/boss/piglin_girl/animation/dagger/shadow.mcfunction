summon minecraft:item_display ~ ~ ~ {Tags:["light_green.boss.piglin_girl.shadow","light_green.new.mob"],item:{id:egg,components:{"item_model":"light_green:shadow"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.25,1.25,1.25],translation:[0,0.75,0]}}
execute at @s run rotate @n[tag=light_green.new.mob] ~ 0
execute as @n[tag=light_green.new.mob] run tag @s remove light_green.new.mob
