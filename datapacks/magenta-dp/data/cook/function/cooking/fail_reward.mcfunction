#
# 失敗時歸還一份特殊食材，剩餘份數 #left 大於 0 就繼續遞迴

execute if data entity @e[tag=MagentaCookingFood,type=item,limit=1,sort=nearest] {Item:{id:"minecraft:copper_pickaxe"}} run execute as @p run function cook:item/ingredient/golden_flour

execute if data entity @e[tag=MagentaCookingFood,type=item,limit=1,sort=nearest] {Item:{id:"minecraft:magenta_wool"}} run execute as @p run function cook:cooking/wool_re

scoreboard players remove #left MagentaBatch 1
execute if score #left MagentaBatch matches 1.. run function cook:cooking/fail_reward
