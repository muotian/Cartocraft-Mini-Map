#by JaCkY99
#black

playsound entity.dolphin.eat player @a ~ ~ ~ 1 1.5

summon item_display ~ -100 ~ {Tags:["black.summon"]}
item replace entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0 from entity @s weapon
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] item.components."minecraft:custom_data".black.machine_gun_sneak set value 0b
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] item.components."minecraft:custom_model_data" set value {floats:[8]}
item replace entity @s weapon from entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0
kill @e[tag=black.summon]