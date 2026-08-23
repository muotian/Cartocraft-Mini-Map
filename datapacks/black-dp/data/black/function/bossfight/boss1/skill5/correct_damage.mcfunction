item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword",custom_name={"color":"gold","italic":false,"translate":"black.b1s5_item"},lore=[{"color":"white","italic":false,"translate":"black.b1s5_lore.1"},{"color":"white","italic":false,"translate":"black.b1s5_lore.2"}]] 1
execute if score $berserk.tick icebird.boss1 matches ..160 run damage @s 30 black:cd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. run damage @s 90 black:cd_sc by @n[tag=icebird.boss1]
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword"]
effect give @s regeneration 1 3 false