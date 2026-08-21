#

# 設置烹飪鍋
# execute as @e[type=item] if items entity @s container.0 campfire at @s if block ~ ~-0.1 ~ iron_block align xyz positioned ~ ~-1 ~ run function cook:pot

# 食材展示
execute as @a at @s run execute as @e[type=block_display,tag=CookingPot,distance=..10] at @s run function cook:pot_display

#
execute as @a if items entity @s weapon.mainhand *[custom_data={spatula:1b}] at @s run execute as @e[type=block_display,tag=CookingPot,distance=..10] at @s run function cook:cooking/interaction
execute as @e[type=block_display,tag=CookingPot] at @s unless entity @a[distance=..10,nbt={SelectedItem:{components:{"minecraft:custom_data":{spatula:1b}}}}] run kill @e[type=interaction,tag=MagentaPotInteraction,distance=..0.1]

execute as @e[type=interaction,tag=MagentaPotInteraction] if data entity @s attack at @s run function cook:pot_drop
execute as @e[type=interaction,tag=MagentaPotInteraction] on target if items entity @s armor.head *[custom_data={chef_hat:1b}] at @s run scoreboard players set @e[type=block_display,distance=..6,limit=1,sort=nearest] MagentaHat 1
execute as @e[type=interaction,tag=MagentaPotInteraction] on target unless items entity @s armor.head *[custom_data={chef_hat:1b}] at @s run scoreboard players reset @e[type=block_display,distance=..6,limit=1,sort=nearest] MagentaHat
execute as @e[type=interaction,tag=MagentaPotInteraction] on target if items entity @s armor.chest *[custom_data={chef_uniform:1b}] at @s run scoreboard players set @e[type=block_display,distance=..6,limit=1,sort=nearest] MagentaUniform 1
execute as @e[type=interaction,tag=MagentaPotInteraction] on target unless items entity @s armor.chest *[custom_data={chef_uniform:1b}] at @s run scoreboard players reset @e[type=block_display,distance=..6,limit=1,sort=nearest] MagentaUniform
execute as @e[type=interaction,tag=MagentaPotInteraction] if data entity @s interaction at @s run scoreboard players add @e[type=block_display,distance=..0.2,limit=1,sort=nearest] MagentaCooking 1
# execute as @e[type=interaction,tag=MagentaPotInteraction] if data entity @s interaction run say hi
execute as @e[type=interaction,tag=MagentaPotInteraction] run data remove entity @s interaction

# 拆除烹飪鍋
execute as @e[type=block_display,tag=CookingPot] at @s unless block ~ ~ ~ hopper run function cook:destroy

# 鍋鏟CD
scoreboard players remove @a[scores={MagentaSpatulaCD=1..}] MagentaSpatulaCD 1

# 食譜
execute as @e[type=block_display,scores={MagentaCooking=1}] unless score @s MagentaFinish matches 1.. at @s run function cook:recipe

# 烹飪
scoreboard players add @e[type=block_display,scores={MagentaCooking=1,MagentaFinish=1..}] MagentaTimer 1
execute as @e[type=block_display,scores={MagentaCooking=1,MagentaFinish=1..}] at @s run particle flame ~ ~ ~ 0.3 0.3 0.3 0 5 force @a 

execute as @e[type=block_display,scores={MagentaCooking=1,MagentaFinish=1..,MagentaTimer=1}] at @s run function cook:cooking/start

execute as @e[type=block_display,scores={MagentaCooking=2..}] at @s run function cook:cooking/finish
