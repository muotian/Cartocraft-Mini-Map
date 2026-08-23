#by JaCkY99
#black

playsound entity.generic.explode player @a ~ ~ ~ 0.5 1.5
playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1.5
playsound item.spyglass.use player @a ~ ~ ~ 2 1.5
playsound item.spyglass.use player @a ~ ~ ~ 2 1
playsound item.spyglass.use player @a ~ ~ ~ 2 0.5

particle smoke ^ ^ ^0.5 0 0 0 0.01 5

scoreboard players set @s black.machine_gun_cd 11
rotate @s ~ ~-7

execute store result storage black temp.xy.x double 0.001 run random value -50..50
execute store result storage black temp.xy.y double 0.001 run random value -50..50

execute unless score @s black.sneak matches 1.. run function black:item/machine_gun/random with storage black temp.xy
execute if score @s black.sneak matches 1.. run function black:item/machine_gun/ray_loop

summon item_display ~ -100 ~ {Tags:["black.summon"]}
item replace entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0 from entity @s weapon
scoreboard players remove #black.temp black.temp 1
execute store result entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] item.components."minecraft:custom_data".black.machine_gun_ammo int 1 run scoreboard players get #black.temp black.temp
item replace entity @s weapon from entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0
kill @e[tag=black.summon]