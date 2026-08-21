
summon item_display ~ ~ ~ {Tags:[mini_light.temp]}
item replace entity @e[type=item_display,tag=mini_light.temp,limit=1] contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=mini_light.temp,limit=1] contents
kill @e[type=item_display,tag=mini_light.temp,limit=1]

#summon item ~ ~ ~ {Tags:[mini_light.temp],Item:{id:barrier,components:{item_model:"air"}}}
#item replace entity @e[type=item,tag=mini_light.temp,limit=1] contents from entity @s weapon.offhand
#tag @e[type=item,tag=mini_light.temp,limit=1] remove mini_light.temp
#item replace entity @s weapon.offhand with air

title @s times 0t 40t 5t
title @s title {"text":"!","color": "red","bold": true}
title @s subtitle {"translate": "text.mini_light.enchant.lower_lvl","color": "red"}

playsound minecraft:entity.cow.death master @s ~ ~ ~ 1 1.25
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1