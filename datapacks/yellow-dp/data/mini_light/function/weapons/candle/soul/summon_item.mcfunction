# 執行者是玩家，但是執行位置是怪物
function mini_light:weapons/candle/soul/_summon_item
data modify entity @n[tag=mini_light.soul_item_aec,tag=new] Owner set from entity @n[tag=attacked] UUID
tag @e[tag=new] remove new