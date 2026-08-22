execute if items entity @s weapon.offhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/double/summon with storage player:data
function animated_java:sword_model/summon {args:{}}
$tag @n[tag=new.hand_anime] add $(id)-hand
tag @n[tag=new.hand_anime] add sword_model
$tag @n[tag=new.hand_item] add $(id)-item
item replace entity @n[tag=new.hand_item] container.0 from entity @s weapon.mainhand
tag @n[tag=new.hand_item] remove new.hand_item
tag @n[tag=new.hand_anime] remove new.hand_anime
scoreboard players set @s wool_purple.weapon.double 0