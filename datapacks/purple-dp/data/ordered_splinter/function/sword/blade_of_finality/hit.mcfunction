tag @s add wool_purple.hit
tag @s add wool_purple.chain_target
scoreboard players add $count wool_purple.raycast 1

# 成功連線到新目標時播放一次音效
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 2 0.1

# 從上一隻怪 (chain_source) 眼睛朝向本隻怪眼睛發射光束粒子
scoreboard players set $itt wool_purple.raycast 25
execute at @e[tag=wool_purple.chain_source,limit=1] anchored eyes facing entity @s eyes positioned ^ ^ ^0.2 run function ordered_splinter:sword/blade_of_finality/beam

# 轉移連鎖來源
tag @e[tag=wool_purple.chain_source] remove wool_purple.chain_source
tag @s add wool_purple.chain_source
tag @s remove wool_purple.chain_target

# 最多連鎖 5 次，且在玩家 10 格範圍內
execute if score $count wool_purple.raycast matches ..4 if entity @e[tag=wool_purple.chain_origin,distance=..10] run function ordered_splinter:sword/blade_of_finality/chain
