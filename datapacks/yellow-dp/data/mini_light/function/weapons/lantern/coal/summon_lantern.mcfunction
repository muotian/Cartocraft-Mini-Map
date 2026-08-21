# 執行者、執行位置是玩家
summon minecraft:item_display ~ ~-10 ~ {Tags:["mini_light.coal_lantern","new"],item:{count:1,id:"minecraft:lantern"},transformation:{left_rotation:[0.5653868f,0.426632f,0.2773999f,-0.6491319f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.9999997f,1.0000005f,1.0000001f],translation:[-1.732f,0.0f,1.0f]}}

item replace entity @n[tag=mini_light.coal_lantern,tag=new] container.0 from entity @s weapon.mainhand
tp @n[tag=mini_light.coal_lantern,tag=new] ~ ~1 ~ ~ 0

execute store result score @n[tag=mini_light.coal_lantern,tag=new] mini_light.lantern.schedule run time query gametime
scoreboard players add @n[tag=mini_light.coal_lantern,tag=new] mini_light.lantern.schedule 2
schedule function mini_light:weapons/lantern/coal/schedule1 2t append
tag @e[tag=new] remove new


# 為了傷害
execute store result score @s mini_light.lantern.schedule run time query gametime
scoreboard players add @s mini_light.lantern.schedule 5