#

playsound entity.arrow.hit_player master @a ~ ~ ~ 0.5 1.4 0
title @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{spatula:1b}}}}] actionbar {"translate": "magenta.message.cooking_success","color": "green"}

# execute if score @s MagentaRecipe matches 1 run give @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{spatula:1b}}}}] cooked_beef 1

# 成功才依份數扣除食材，空桶／空瓶也跟著逐次歸還
scoreboard players operation #left MagentaBatch = @s MagentaBatch
function cook:cooking/consume

# 廚師長袍讓每份製作都變成 3 個，只放大產出、不影響上面扣掉的份數
scoreboard players set #mul MagentaBatch 1
execute if score @s MagentaUniform matches 1 run scoreboard players set #mul MagentaBatch 3
scoreboard players operation @s MagentaBatch *= #mul MagentaBatch

execute store result entity @e[tag=MagentaCookingFood,type=item,limit=1,sort=nearest] Item.count int 1 run scoreboard players get @s MagentaBatch

execute as @e[type=item,limit=1,sort=nearest] run data modify entity @s PickupDelay set value 5s
