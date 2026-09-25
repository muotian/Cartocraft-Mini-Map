# 生怪器召喚 (僅在場上有 armor_stand 時執行)
execute if entity @e[type=armor_stand,limit=1] run function ordered_splinter:monster/spawners

# 加入隊伍 (僅在未加入隊伍的怪物身上執行一次)
execute as @e[tag=wool_purple.monster,team=] run team join wool_purple.monster

# 怪物主體與投射物運作 (僅在場上有活著的怪物/酸液實體時執行)
execute if entity @e[tag=wool_purple.monster,limit=1] run function ordered_splinter:monster/active_tick

# 藥水隊伍
execute as @e[tag=wool_purple.potion,type=splash_potion] at @s run team join wool_purple.green
