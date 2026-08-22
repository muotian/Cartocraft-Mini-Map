advancement revoke @s only pink:skill3/star_rc1

item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_data","tag": "{reset:1b}"}
item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_data","tag": "{reset:2b}"}
stopsound @s * minecraft:entity.player.burp 

# 

#
execute if score @s pink.mana_v matches 6.. run function pink:skills_3/star/summon


