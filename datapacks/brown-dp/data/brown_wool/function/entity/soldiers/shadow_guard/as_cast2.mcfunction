
execute unless score @s brown_wool.shadow_guard.cast2 matches 1.. run item replace entity @s armor.chest with air
execute unless score @s brown_wool.shadow_guard.cast2 matches 1.. run item replace entity @s armor.head with air
execute unless score @s brown_wool.shadow_guard.cast2 matches 1.. run item replace entity @s armor.legs with air
execute unless score @s brown_wool.shadow_guard.cast2 matches 1.. run item replace entity @s armor.feet with air

execute unless score @s brown_wool.shadow_guard.cast2_random matches 1.. store result score @s brown_wool.shadow_guard.cast2_random run random value 1..2

execute unless score @s brown_wool.shadow_guard.cast2_random matches 2 run item replace entity @s weapon.mainhand with air
execute unless score @s brown_wool.shadow_guard.cast2_random matches 2 run item replace entity @s weapon.offhand with netherite_sword[attribute_modifiers=[{type:attack_damage,amount:0,operation:add_value,id:"1766547778461"}]]

effect give @s invisibility 1 0 true



scoreboard players add @s brown_wool.shadow_guard.cast2 1



execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run tag @s remove brown_wool.shadow_guard.cast2
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run effect clear @s invisibility
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run item replace entity @s weapon.offhand with air
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run item replace entity @s weapon.mainhand with netherite_sword[attribute_modifiers=[{type:attack_damage,amount:0,operation:add_value,id:"1766547778461"}]]
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run item replace entity @s armor.chest with netherite_chestplate[trim={pattern:eye,material:amethyst},attribute_modifiers=[{type:armor,amount:0,operation:add_value,id:"1776546978431"}]]
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run item replace entity @s armor.head with netherite_helmet[trim={pattern:silence,material:amethyst},attribute_modifiers=[{type:armor,amount:0,operation:add_value,id:"1766546838431"}]]
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run scoreboard players reset @s brown_wool.shadow_guard.cast2_random
execute if score @s brown_wool.shadow_guard.cast2 matches 100.. run scoreboard players reset @s brown_wool.shadow_guard.cast2
