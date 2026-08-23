scoreboard players add $b1s2.time icebird.boss1 1
item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword",custom_name={"color":"gold","italic":false,"translate":"black.b1s2_item"},lore=[{"color":"white","italic":false,"translate":"black.b1s2_lore.1"},{"color":"white","italic":false,"translate":"black.b1s2_lore.2"}]] 1

execute if score $berserk.tick icebird.boss1 matches ..160 if score $b1s2.time icebird.boss1 matches 1 run damage @s 36 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. if score $b1s2.time icebird.boss1 matches 1 run damage @s 108 black:nocd_sc by @n[tag=icebird.boss1]

execute if score $berserk.tick icebird.boss1 matches ..160 if score $b1s2.time icebird.boss1 matches 2 run damage @s 72 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. if score $b1s2.time icebird.boss1 matches 2 run damage @s 117 black:cd_sc by @n[tag=icebird.boss1]

execute if score $berserk.tick icebird.boss1 matches ..160 if score $b1s2.time icebird.boss1 matches 3.. run damage @s 144 black:nocd_sc by @n[tag=icebird.boss1]
execute if score $berserk.tick icebird.boss1 matches 160.. if score $b1s2.time icebird.boss1 matches 3.. run damage @s 432 black:nocd_sc by @n[tag=icebird.boss1]

item replace entity @n[tag=icebird.boss1] weapon.mainhand with golden_sword[item_model="black:bosssword"]
execute at @n[type=marker,tag=icebird.b1s2] run playsound minecraft:block.end_portal.spawn block @s ~ ~ ~ 2 1.4 1
execute at @n[type=marker,tag=icebird.b1s2] run particle minecraft:small_flame ~ ~ ~ 0 0 0 0.667 200 force
execute at @n[type=marker,tag=icebird.b1s2] run particle dust{color:[1.000,0.165,0.000],scale:1.4} ~ ~1 ~ 0.1 2.5 0.1 0 40 force
scoreboard players set $boss1.skill2 icebird.boss1 0
scoreboard players set $boss1.stop icebird.boss1 0
function black:bossfight/boss1/skill3/ini
