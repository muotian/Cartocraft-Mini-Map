execute rotated ~ 0 positioned ~ ~.3 ~ run function black:bossfight/boss1/skill4/explode_particle {particle:large_smoke,speed:0.000008}
particle minecraft:explosion ~ ~.5 ~ 5 5 5 0 100 force
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 2 1.4
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword",custom_name={"color":"gold","italic":false,"translate":"black.b1s1_item"},lore=[{"color":"white","italic":false,"translate":"black.b1s1_lore.1"},{"color":"white","italic":false,"translate":"black.b1s1_lore.2"},{"color":"white","italic":false,"translate":"black.b1s1_lore.2_hard"}]] 1

execute if score $berserk.tick icebird.boss1 matches ..160 as @a run damage @s 30 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $players icebird.core matches 2.. if score $berserk.tick icebird.boss1 matches ..160 as @a run damage @s 50 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. as @a run damage @s 90 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $players icebird.core matches 2.. if score $berserk.tick icebird.boss1 matches 160.. as @a run damage @s 150 black:nocd_sc by @n[tag=icebird.boss1]


item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword"] 1
kill @s