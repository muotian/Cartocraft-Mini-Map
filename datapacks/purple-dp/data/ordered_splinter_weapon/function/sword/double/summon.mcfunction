function animated_java:sword_double_model/summon {args:{}}
$tag @n[tag=new.hand_anime] add $(id)-hand
tag @n[tag=new.hand_anime] add sword_double_model
$tag @n[tag=new.mainhand_item] add $(id)-mainitem
item replace entity @n[tag=new.mainhand_item] container.0 from entity @s weapon.mainhand
tag @n[tag=new.mainhand_item] remove new.mainhand_item
$tag @n[tag=new.offhand_item] add $(id)-offitem
item replace entity @n[tag=new.offhand_item] container.0 from entity @s weapon.offhand
tag @n[tag=new.offhand_item] remove new.offhand_item
tag @n[tag=new.hand_anime] remove new.hand_anime
scoreboard players set @s wool_purple.weapon.double 1