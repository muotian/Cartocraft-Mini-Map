# 玩家主手武器狀態機與 Tick 路由 (Phase 2 優化)
execute as @a run function ordered_splinter:sword/player_tick

# 全域副手違規檢測（只有當玩家副手不為空時才檢查）
execute as @a at @s unless items entity @s weapon.offhand air if items entity @s weapon.offhand *[custom_data~{no_offhand: 1b}] run function ordered_splinter:sword/no_offhand

# 全域技能冷卻遞減（純整數比對，無 NBT 損耗，確保切換武器後冷卻持續進行）
execute as @a if score @s wool_purple.comet_cd matches 1..600 run scoreboard players remove @s wool_purple.comet_cd 1
execute as @a if score @s wool_purple.carpet_cd matches 1..600 run scoreboard players remove @s wool_purple.carpet_cd 1
execute as @a if score @s wool_purple.ability_cd matches 1..600 run scoreboard players remove @s wool_purple.ability_cd 1
execute as @a if score @s wool_purple.isaiah_cd.1 matches 1..800 run scoreboard players remove @s wool_purple.isaiah_cd.1 1
execute as @a if score @s wool_purple.isaiah_cd.2 matches 1..1500 run scoreboard players remove @s wool_purple.isaiah_cd.2 1
execute as @a if score @s wool_purple.tornado_cd matches 1..800 run scoreboard players remove @s wool_purple.tornado_cd 1

# 以賽亞技能 1 音效（計分板區間守衛，0 持續時間直接跳過，不遍歷 11 次判斷）
execute as @a[scores={wool_purple.isaiah_duration.1=115..200}] at @s run function ordered_splinter:sword/isaiah/duration_sounds

# 以賽亞技能 1 持續時間遞減與 Bossbar
execute as @a unless score @s wool_purple.isaiah_duration.1 matches 0..200 run scoreboard players set @s wool_purple.isaiah_duration.1 0
execute as @a if score @s wool_purple.isaiah_duration.1 matches 1.. run scoreboard players remove @s wool_purple.isaiah_duration.1 1
execute as @a store result bossbar wool_purple.isaiah.duration value run scoreboard players get @s wool_purple.isaiah_duration.1
execute as @a if score @s wool_purple.isaiah_duration.1 matches 0 run tag @s remove wool_purple.isaiah_ability_1
execute as @a if score @s wool_purple.isaiah_duration.1 matches 0 run bossbar remove wool_purple.isaiah.duration

# 以賽亞技能 2 標籤清理
execute as @a[tag=wool_purple.isaiah_ability_2] if score @s wool_purple.isaiah_cd.2 matches 1200 run tag @s remove wool_purple.isaiah_ability_2

# 斷魂裁決未手持清理
execute as @a[tag=wool_purple.soulrend_user] unless items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] run function ordered_splinter:sword/soulrend/unused

# 目標實體 Tick
execute as @e[tag=wool_purple.naraku_fallen_shortsword_target] at @s run function ordered_splinter:sword/naraku_fallen_shortsword/target
execute as @e[tag=wool_purple.singularity_of_thousandfaces_target] at @s run function ordered_splinter:sword/singularity_of_thousandfaces/target
execute if score $cycle wool_purple.singularity_cycle matches 40.. run scoreboard players set $cycle wool_purple.singularity_cycle 0

# 投射物實體運作（計分板閘門保護，只有有冷卻/施放中的玩家時才呼叫）
execute if entity @a[scores={wool_purple.comet_cd=1..600}] run function ordered_splinter:sword/purity_dagger/active_projectiles
execute if entity @a[scores={wool_purple.carpet_cd=1..600}] run function ordered_splinter:sword/aspectslayer_longsword/active_projectiles
execute if entity @a[scores={wool_purple.isaiah_cd.2=1..1500}] run function ordered_splinter:sword/isaiah/active_projectiles
execute if entity @a[scores={wool_purple.tornado_cd=1..800}] run function ordered_splinter:sword/pyrowind_longsword/active_projectiles

# 真實之眼技能狀態
execute as @a[tag=wool_purple.eye_ability] run function ordered_splinter:eye_of_truesight/ability_tick
scoreboard players set @a wool_purple.eye_ability 0
execute as @a[tag=wool_purple.eye_ability_raycast] at @s run function ordered_splinter:eye_of_truesight/ability_raycast_tick
execute as @a[tag=!wool_purple.eye_ability_raycast] if score @s wool_purple.eye_ability_raycast matches 100 run scoreboard players set @s wool_purple.eye_ability_raycast 0
