advancement revoke @s only pink:skill2/white_rc1

item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_data","tag": "{reset:1b}"}
item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_data","tag": "{reset:2b}"}
stopsound @s player minecraft:entity.player.burp 

#
execute if score @s pink.star.skill.cd matches 1.. unless score @s pink.star.skill1.card_count matches 1.. run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 1.5

#
execute unless score @s pink.star.skill.cd matches 1.. run function pink:skills_2/white/effect


#

