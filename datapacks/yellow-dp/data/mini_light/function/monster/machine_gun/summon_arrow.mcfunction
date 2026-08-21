# 執行者、執行位置是機關槍

playsound minecraft:item.crossbow.shoot hostile @a ~ ~ ~ 1 1

execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:["mini_light.token","new"],item:{id:"tipped_arrow",count:1,components:{potion_contents:{custom_effects:[{id:"wither",amplifier:0b,duration:200}]}}}}
execute on passengers as @e[type=marker,tag=mini_light.machine_gun_marker] run data modify entity @n[tag=mini_light.token,tag=new] Motion set from entity @s data.Motion
data modify entity @n[tag=mini_light.token,tag=new] Owner set from entity @s UUID
tag @e[tag=new] remove new

scoreboard players remove @s mini_light.machine_gun.last 1
scoreboard players set @s mini_light.machine_gun.cd 3
execute if score @s mini_light.machine_gun.last matches 0 on passengers run kill @s[tag=mini_light.machine_gun_marker]