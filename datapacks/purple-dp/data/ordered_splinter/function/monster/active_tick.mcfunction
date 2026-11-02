execute as @e[tag=wool_purple.monster] on target run tag @s add wool_purple.target
execute as @e[tag=wool_purple.monster] on target if data entity @s {HurtTime:9s} on attacker run function ordered_splinter:monster/attacker

# 燃燒受傷檢測（火燒傷害時觸發怪物閃紅與受傷音效）
execute as @e[tag=wool_purple.monster,type=zombie,predicate=ordered_splinter:on_fire] if data entity @s {HurtTime:9s} at @s run function ordered_splinter:monster/add_tag

# Mannequin 存活檢查預設為 0
scoreboard players set @e[tag=wool_purple.monster,type=mannequin] wool_purple.mob.exist 0

# 殭屍分流
execute as @e[tag=wool_purple.monster,type=zombie] at @s run function ordered_splinter:monster/dispatch

# Mannequin 存活檢查結算
execute as @e[tag=wool_purple.monster,type=mannequin] if score @s wool_purple.mob.exist matches 0 run kill @s

# 投射物與技能運作 (必須在 target 標籤移除前執行，確保目標判定正確！)
execute as @e[tag=wool_purple.acid_spray,type=marker] at @s run function ordered_splinter:monster/acid_spray/move
execute if entity @e[tag=wool_purple.sword_radiance_front,type=marker,limit=1] run function ordered_splinter:monster/sword_radiance/tick_all

# 清除 target 標籤
execute as @e[tag=wool_purple.monster] on target run tag @s remove wool_purple.target
