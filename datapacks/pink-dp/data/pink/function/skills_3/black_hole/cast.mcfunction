#
advancement revoke @s only pink:skill3/bh

item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_data","tag": "{reset:1b}"}
item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_data","tag": "{reset:2b}"}
stopsound @s * minecraft:entity.player.burp 

#
execute unless score @s pink.mana_v matches 8 run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 1.5

#
execute if score @s pink.mana_v matches 8 run function pink:skills_3/black_hole/summon

