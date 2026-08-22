#
summon item ~ ~ ~ {Tags:["new","___"],Item:{id:"stone"}}

item replace entity @n[tag=___,tag=new] container.0 from entity @s armor.legs
data modify entity @n[tag=___,tag=new] Owner set from entity @s UUID

item replace entity @s armor.legs with air

tag @n[tag=___,tag=new] remove new
