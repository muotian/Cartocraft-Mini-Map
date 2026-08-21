
summon item_display ~ ~ ~ {Tags:[mini_light.temp]}
item replace entity @e[type=item_display,tag=mini_light.temp,limit=1] contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=mini_light.temp,limit=1] contents
kill @e[type=item_display,tag=mini_light.temp,limit=1]

title @s times 0t 40t 5t
title @s title {"text":"!","color": "red","bold": true}
title @s subtitle {"translate": "text.mini_light.enchant.no_apply","color": "red"}

playsound minecraft:entity.cow.death master @s ~ ~ ~ 1 1.25
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1