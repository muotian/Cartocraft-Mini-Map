
summon item ~ ~ ~ {Tags:["mini_light.temp"],Item:{id:barrier,components:{item_model:"air"}}}
item replace entity @n[tag=mini_light.temp,type=item] contents from entity @s weapon.mainhand
tag @n[tag=mini_light.temp,type=item] remove mini_light.temp
item replace entity @s weapon.mainhand with air

title @s times 0t 40t 5t
title @s title {"text":"!","color": "red","bold": true}
title @s subtitle {"translate": "text.mini_light.enchant.no_item","color": "red"}

playsound minecraft:entity.cow.death master @s ~ ~ ~ 1 1.25
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1