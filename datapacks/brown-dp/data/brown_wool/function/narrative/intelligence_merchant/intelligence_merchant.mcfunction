

execute if entity @s[tag=brown_wool.intelligence_merchant.narrative1.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon2
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative2.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon3
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative3.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon4
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative4.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon5
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative5.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon6
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative6.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon7
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative7.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon8
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative8.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon9
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative9.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon10
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative10.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon11
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative11.0,tag=brown_wool.narrative.select] on target unless score @s brown_wool.intelligence_merchant matches 5.. run tellraw @s {translate:"entity.brown_wool.intelligence_merchant.narrative30",color:"red"}
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative11.0,tag=brown_wool.narrative.select] on target if score @s brown_wool.intelligence_merchant matches 5.. run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon17
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative11.0,tag=brown_wool.narrative.select] on target if score @s brown_wool.intelligence_merchant matches 5.. run clear @s emerald 5
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative12.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon14
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative13.0,tag=brown_wool.narrative.select] on target unless score @s brown_wool.intelligence_merchant matches 10.. run tellraw @s {translate:"entity.brown_wool.intelligence_merchant.narrative30",color:"red"}
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative13.0,tag=brown_wool.narrative.select] on target if score @s brown_wool.intelligence_merchant matches 10.. run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon23
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative13.0,tag=brown_wool.narrative.select] on target if score @s brown_wool.intelligence_merchant matches 10.. run clear @s emerald 10
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative14.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon15
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative15.0,tag=brown_wool.narrative.select] on target unless score @s brown_wool.intelligence_merchant matches 20.. run tellraw @s {translate:"entity.brown_wool.intelligence_merchant.narrative30",color:"red"}
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative15.0,tag=brown_wool.narrative.select] on target if score @s brown_wool.intelligence_merchant matches 20.. run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon29
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative15.0,tag=brown_wool.narrative.select] on target if score @s brown_wool.intelligence_merchant matches 20.. run clear @s emerald 20
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative16.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon16
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative17.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon9
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative24.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon21
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative31.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon27
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative18.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon18
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative19.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon19
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative20.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon20
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative21.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon21
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative22.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon22
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative23.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon12
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative25.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon24
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative26.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon25
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative27.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon26
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative28.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon27
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative29.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon28
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative30.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon13
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative32.0] on target run function brown_wool:narrative/intelligence_merchant/intelligence_merchant_summon30
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target as @e[type=marker,tag=brown_wool.intelligence_merchant.marker] at @s run particle cloud ~ ~ ~ 0.5 0.8 0.5 0.1 500
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target as @e[type=marker,tag=brown_wool.intelligence_merchant.marker] at @s as @a[distance=..10] run playsound entity.firework_rocket.launch player
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target as @e[type=villager,tag=brown_wool.intelligence_merchant] at @s run tp @s ~ ~-200 ~
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target as @e[type=villager,tag=brown_wool.intelligence_merchant] at @s run kill @s
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target run kill @e[type=text_display,tag=brown_wool.intelligence_merchant.narrative0]
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target run kill @e[type=interaction,tag=brown_wool.intelligence_merchant.narrative00]
execute if entity @s[tag=brown_wool.intelligence_merchant.narrative33.0] on target run kill @e[type=marker,tag=brown_wool.intelligence_merchant.marker] 





execute on target run playsound block.wooden_pressure_plate.click_on player


execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/intelligence_merchant/as_select1

execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select

execute if data entity @s interaction run data remove entity @s interaction




