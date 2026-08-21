item replace entity @s weapon.mainhand with golden_sword[attribute_modifiers=[{id:"base_attack_damage",type:attack_damage,amount:1,operation:"add_value"},{id:"base_attack_speed",type:attack_speed,amount:-2.4,operation:"add_value"}]]
item replace entity @s weapon.mainhand with golden_sword[item_model="light_green:black_stone/set/axe",attribute_modifiers=[{id:"base_attack_damage",type:attack_damage,amount:1,operation:"add_value"},{id:"base_attack_speed",type:attack_speed,amount:-2.4,operation:"add_value"}]]
effect give @s speed 2 2 false
data modify entity @s drop_chances.offhand set value 0f