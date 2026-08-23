kill @e[tag=icebird.b1s1]
tp @n[tag=icebird.boss1] ~ ~ ~
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1.6 1.2
particle minecraft:large_smoke ~ ~0.3 ~ 0.3 0 0.3 0.3 150
particle minecraft:explosion ~ ~0.5 ~ 0.5 0.5 0.5 1 10 force
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword",custom_name={"color":"gold","italic":false,"translate":"black.b1s5_item"},lore=[{"color":"white","italic":false,"translate":"black.b1s5_lore.1"},{"color":"white","italic":false,"translate":"black.b1s5_lore.2"}]] 1
execute as @a[distance=..7.5] run damage @s 85 black:nocd_sc by @n[tag=icebird.boss1]
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword"]
kill @s

