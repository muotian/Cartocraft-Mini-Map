# 開箱判定與 ID 檢查 (合併單一 @e 掃描)
execute as @e[tag=wool_purple.open_box] at @s run function ordered_splinter:box/process_box
execute as @e[tag=wool_purple.open_demon_box] at @s run function ordered_splinter:box/process_demon_box
execute as @e[tag=wool_purple.open_boss_box] at @s if data entity @s interaction run function ordered_splinter:box/open_box/open_boss_box

# 開箱動畫推進 (僅在有動畫時運作)
execute if entity @e[tag=wool_purple.animation,limit=1] run function ordered_splinter:box/animation_tick

# 惡魔箱粒子特效 (20 格內有玩家時)
execute at @e[tag=aj.demon_box.root] if entity @p[distance=..20] run particle dust_color_transition{from_color:[0.549,0.000,0.000],to_color:[0.902,0.000,0.000],scale:1} ~ ~1 ~ 0.45 0.45 0.45 5 2

# 寶箱發光檢測（玩家 5 格內，或已有發光狀態）
execute as @a at @s if entity @e[type=interaction,tag=wool_purple.box_interaction,distance=..5] run function ordered_splinter:box/glowing_check
execute if entity @e[type=interaction,tag=wool_purple.box_interaction,scores={wool_purple.is_glowing=1..}] unless entity @a[distance=..5] run function ordered_splinter:box/glowing_check
