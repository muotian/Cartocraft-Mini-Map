execute rotated ~ 0 positioned ~ ~.3 ~ run function black:bossfight/boss1/skill4/explode_particle {particle:large_smoke,speed:0.000008}
particle minecraft:explosion ~ ~.5 ~ 5 5 5 0 100 force
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 2 1.4
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword",custom_name={"color":"gold","italic":false,"translate":"black.b1s4_item"},lore=[{"color":"white","italic":false,"translate":"black.b1s4_lore.1"},{"color":"white","italic":false,"translate":"black.b1s4_lore.2"}]] 1

execute if score $berserk.tick icebird.boss1 matches ..160 as @a run damage @s 66 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. as @a run damage @s 198 black:nocd_sc by @n[tag=icebird.boss1]


item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword"] 1
effect give @a wither 20 1 false
execute on passengers run kill @s
kill @s