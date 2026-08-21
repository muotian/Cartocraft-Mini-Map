item replace entity @s weapon.mainhand with shield[banner_patterns=[{color:black,pattern:bricks}],base_color=white,attribute_modifiers=[{id:"light_green:weapon",type:attack_damage,amount:5,operation:"add_value",slot:"mainhand"}]]
scoreboard players set @s light_green.mob.ai 10
effect give @e[type=piglin,distance=..10,tag=light_green] absorption infinite 0 true
scoreboard players reset @s light_green.main.math