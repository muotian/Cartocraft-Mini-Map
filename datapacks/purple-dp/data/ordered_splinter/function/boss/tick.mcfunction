# Boss AJ 模型動作 (僅當 Boss 存在時)
execute as @e[tag=aj.archdemon.root] at @s run function ordered_splinter:boss/archdemon/tick

# Boss 房間入口按鈕 (玩家在 10 格內時才運作)
execute as a11-0-0-0-4 at @s if entity @p[distance=..10] run function ordered_splinter:boss/button_active
execute as a11-0-0-0-4 at @s unless entity @p[distance=..10] if entity @e[tag=wool_purple.room_button] run function ordered_splinter:boss/archdemon/room/kill

# Boss 房間玩家偵測 (a11-1-2-3-4 標記位置 marker)
execute as a11-1-2-3-4 at @s positioned ~-1 ~ ~-1 if entity @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] run function ordered_splinter:boss/archdemon/room/player_convert
execute as @a[tag=wool_purple.in_boss_room] at a11-1-2-3-4 positioned ~-1 ~ ~-1 unless entity @s[dx=-19,dy=14,dz=-27] run function ordered_splinter:boss/archdemon/room/leave
execute as a11-1-2-3-4 at @s positioned ~-1 ~ ~-1 unless entity @a[dx=-19,dy=14,dz=-27] if entity a11-0-0-0-1 run function ordered_splinter:boss/archdemon/kill

# Boss 房間傳送 (a11-0-0-0-6 傳送點 marker)
execute as a11-0-0-0-6 at @s if entity @s[tag=wool_purple.portal] run function ordered_splinter:boss/portal_tick

# 結冰系統 (門控：有被冰結的玩家/實體才執行)
execute if entity @a[tag=wool_purple.ice_target] run function ordered_splinter:boss/ice_player_tick
execute if entity @e[tag=wool_purple.ice_less] run function ordered_splinter:boss/ice_entity_tick
execute if entity @a[tag=wool_purple.ice_remove_cd] run function ordered_splinter:boss/ice_cd_tick

# frozen_effect 物品欄位掃描（門控：僅在有結冰玩家時對其掃描）
execute if entity @a[tag=wool_purple.ice_target] as @a[tag=wool_purple.ice_target] at @s run function ordered_splinter:boss/frozen_scan
