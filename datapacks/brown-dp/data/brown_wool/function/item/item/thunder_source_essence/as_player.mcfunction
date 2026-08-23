# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_source_essence

damage @s 30 lightning_bolt
summon lightning_bolt ~ ~-3 ~
execute if entity @s[tag=brown_wool.thunder_source_essence] run kill @s
execute unless entity @s[tag=brown_wool.thunder_source_essence] run tag @s add brown_wool.thunder_source_essence



