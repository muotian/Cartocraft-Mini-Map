effect give @s invisibility infinite 0 true
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with air
tag @s add mini_light.in_dark
playsound item.armor.equip_chain hostile @a ~ ~ ~ 0.5 1
playsound item.shovel.flatten hostile @a ~ ~ ~ 1 0.5
particle minecraft:smoke ~ ~ ~ .5 1 .5 0 500