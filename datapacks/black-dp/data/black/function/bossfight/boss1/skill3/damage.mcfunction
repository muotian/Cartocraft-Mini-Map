execute rotated ~ 0 run particle minecraft:angry_villager ^ ^0.5 ^1 0.25 0.25 0.25 0 30 force @s
playsound minecraft:entity.phantom.bite block @s ~ ~ ~ 2 0
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword",custom_name={"color":"gold","italic":false,"translate":"black.b1s3_item"},lore=[{"color":"white","italic":false,"translate":"black.b1s3_lore.1"},{"color":"white","italic":false,"translate":"black.b1s3_lore.2"}]] 1
execute if score $berserk.tick icebird.boss1 matches ..160 run damage @s 64 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. run damage @s 192 black:nocd_sc by @n[tag=icebird.boss1]
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword"] 1
effect give @s weakness 10 2 false
tag @s remove icebird.b1s3_target.fake
tag @s remove icebird.b1s3_target.real