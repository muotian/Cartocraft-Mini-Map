#by JaCkY99
#black

playsound entity.generic.explode player @a ~ ~ ~ 0.25 2
playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1.5
playsound entity.firework_rocket.large_blast_far player @a ~ ~ ~ 0.25 1.5

particle smoke ^ ^ ^0.5 0 0 0 0.01 5

scoreboard players set @s black.dark_angel_cd 6
rotate @s ~ ~-3

execute store result storage black temp.xy.x double 0.001 run random value -20..20
execute store result storage black temp.xy.y double 0.001 run random value -20..20

execute unless score @s black.sneak matches 1.. run function black:item/dark_angel/random with storage black temp.xy
execute if score @s black.sneak matches 1.. run function black:item/dark_angel/ray_loop

summon item_display ~ -100 ~ {Tags:["black.summon"]}
item replace entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0 from entity @s weapon
scoreboard players remove #black.temp black.temp 1
execute store result entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] item.components."minecraft:custom_data".black.dark_angel_ammo int 1 run scoreboard players get #black.temp black.temp
item replace entity @s weapon from entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0
kill @e[tag=black.summon]