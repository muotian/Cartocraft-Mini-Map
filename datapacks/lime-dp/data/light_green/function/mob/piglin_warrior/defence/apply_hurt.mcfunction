item replace entity @s weapon.mainhand with crossbow[item_model="light_green:black_stone/set/sword",attribute_modifiers=[{id:"light_green:weapon",amount:0,operation:"add_value",slot:"mainhand",type:attack_damage}],enchantments={"light_green:defence":1},enchantment_glint_override=false]
execute if entity @s[tag=light_green.farm] run item replace entity @s weapon.mainhand with crossbow[item_model="light_green:black_stone/set/hoe",attribute_modifiers=[{id:"light_green:weapon",amount:0,operation:"add_value",slot:"mainhand",type:attack_damage}],enchantments={"light_green:defence":1},enchantment_glint_override=false]
execute on target at @s as @n[tag=light_green.piglin_warrior,distance=0.1..10,type=piglin,scores={light_green.mob.ai=1},limit=1] at @s run function light_green:mob/piglin_warrior/defence/clear
scoreboard players set @s light_green.mob.ai 30
effect give @s resistance infinite 2 true
execute store result score $now_hp light_green.main.math run data get entity @s Health
execute if score $now_hp light_green.main.math matches 0 run scoreboard players reset @s