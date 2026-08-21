item replace entity @s weapon.mainhand with golden_sword[item_model="light_green:black_stone/set/sword",attribute_modifiers=[{id:"light_green:weapon",amount:0,operation:"add_value",slot:"mainhand",type:attack_damage}]]
execute if entity @s[tag=light_green.farm] run item replace entity @s weapon.mainhand with golden_sword[item_model="light_green:black_stone/set/hoe",attribute_modifiers=[{id:"light_green:weapon",amount:0,operation:"add_value",slot:"mainhand",type:attack_damage}]]
scoreboard players set @s light_green.mob.ai -30
#execute as @e[tag=light_green.piglin_warrior,distance=0.1..10,type=piglin] run function light_green:mob/piglin_warrior/defence/apply
effect clear @s resistance
