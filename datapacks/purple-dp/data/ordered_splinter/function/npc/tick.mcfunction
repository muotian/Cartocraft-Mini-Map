# NPC 召喚生成標記 (僅當尚未生成且玩家在 5 格內時執行)
execute as @e[type=marker,tag=wool_purple.npc.guide.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.guide_mannequin] run function ordered_splinter:npc/guide/summon
execute as @e[type=marker,tag=wool_purple.npc.alchemist1.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.alchemist1_mannequin] unless entity @e[tag=wool_purple.npc.alchemist2_mannequin] run function ordered_splinter:npc/alchemist1/summon
execute as @e[type=marker,tag=wool_purple.npc.alchemist2.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.alchemist2_mannequin] run function ordered_splinter:npc/alchemist2/summon
execute as @e[type=marker,tag=wool_purple.npc.drunkard.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.drunkard_mannequin] run function ordered_splinter:npc/drunkard/summon

# NPC 互動與對話主邏輯：
# 1. 玩家在 8 格內時以 20Hz 零延遲運作
# 2. 或該 NPC 當前已有對話框開啟中（確保玩家遠離時能正常觸發 dialog/end 銷毀對話框）
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s if entity @p[distance=..8] run function ordered_splinter:npc/guide/active_tick
execute if entity @e[tag=wool_purple.npc.guide.dialog] as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s unless entity @p[distance=..8] run function ordered_splinter:npc/guide/active_tick

execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s if entity @p[distance=..8] run function ordered_splinter:npc/alchemist1/active_tick
execute if entity @e[tag=wool_purple.npc.alchemist1.dialog] as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s unless entity @p[distance=..8] run function ordered_splinter:npc/alchemist1/active_tick

execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s if entity @p[distance=..8] run function ordered_splinter:npc/alchemist2/active_tick
execute if entity @e[tag=wool_purple.npc.alchemist2.dialog] as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s unless entity @p[distance=..8] run function ordered_splinter:npc/alchemist2/active_tick

execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s if entity @p[distance=..8] run function ordered_splinter:npc/drunkard/active_tick
execute if entity @e[tag=wool_purple.npc.drunkard.dialog] as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s unless entity @p[distance=..8] run function ordered_splinter:npc/drunkard/active_tick

execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s if entity @p[distance=..8] run function ordered_splinter:npc/swordmaster/active_tick
execute if entity @e[tag=wool_purple.npc.swordmaster.dialog] as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s unless entity @p[distance=..8] run function ordered_splinter:npc/swordmaster/active_tick
