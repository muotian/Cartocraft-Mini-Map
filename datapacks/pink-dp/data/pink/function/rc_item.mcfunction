#
summon chest_minecart ~ ~-1000 ~ {Tags:["rc_item"]}

item replace entity @n[tag=rc_item] container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air

item replace entity @s weapon.mainhand from entity @n[tag=rc_item] container.0

kill @e[tag=rc_item] 