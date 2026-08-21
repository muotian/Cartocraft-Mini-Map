$item modify entity @s weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"$(id)":$(lvl)},add:0b}
item modify entity @s weapon.mainhand {function:"set_count",count:-1,add:true}

#summon item_display ~ ~ ~ {Tags:[mini_light.temp]}
#item replace entity @n[tag=mini_light.temp,type=item_display] container.0 from entity @s weapon.mainhand
#item replace entity @s weapon.mainhand from entity @s weapon.offhand
#item replace entity @s weapon.offhand from entity @n[tag=mini_light.temp,type=item_display] container.0
#kill @e[type=item_display,tag=mini_light.temp]