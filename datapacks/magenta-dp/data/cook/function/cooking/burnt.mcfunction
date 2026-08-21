#
data modify block ~ ~ ~ TransferCooldown set value 60s

playsound block.lava.extinguish master @a ~ ~ ~ 0.5 1 0
title @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{spatula:1b}}}}] actionbar {"translate":magenta.message.cooking_burnt,"color":"gray"}

# summon item ~ ~ ~ {Item:{id:"cookie",count:1b,components:{custom_name:{"translate":"magenta.item.burnt_food.name","italic": false},item_model:"magenta:burnt"}},Motion:[0,1.5,0]}
# give @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{spatula:1b}}}}] cookie[custom_name={"translate":"magenta.item.burnt_food.name","italic": false},custom_model_data={strings:["3"]}] 1

# 失敗不批量，只扣一份食材，讓玩家不會一次賠掉整批
scoreboard players set @s MagentaBatch 1

scoreboard players operation #left MagentaBatch = @s MagentaBatch
function cook:cooking/consume

scoreboard players operation #left MagentaBatch = @s MagentaBatch
function cook:cooking/fail_reward

kill @e[tag=MagentaCookingFood,type=item,limit=1,sort=nearest]

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",count:1,components:{custom_name:{"translate":"magenta.item.burnt_food.name","italic": false},item_model:"magenta:burnt"}},PickupDelay:5s,Tags:["MagentaFailFood"]}
execute store result entity @e[tag=MagentaFailFood,type=item,limit=1,sort=nearest] Item.count int 1 run scoreboard players get @s MagentaBatch
tag @e[tag=MagentaFailFood,type=item,limit=1,sort=nearest] remove MagentaFailFood

# data merge entity @e[tag=MagentaCookingFood,type=item,limit=1,sort=nearest] {Item:{id:"poisonous_potato",count:1,components:{custom_name:{"translate":"magenta.item.burnt_food.name","italic": false},item_model:"magenta:burnt"}},PickupDelay:5s}
