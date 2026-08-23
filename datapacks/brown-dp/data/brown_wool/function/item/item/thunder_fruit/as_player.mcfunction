# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_fruit

damage @s 10 lightning_bolt
summon lightning_bolt ~ ~-3 ~
tag @s add brown_wool.thunder_fruit
scoreboard players reset @s brown_wool.thunder_fruit


