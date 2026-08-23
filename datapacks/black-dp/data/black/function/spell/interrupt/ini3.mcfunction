# 執行者為任何受傷的生物

# 初始化一個暫存的記分板
scoreboard players set $temp icebird.spell_ready 0
# 將執行者轉移到該生物的攻擊者，如果攻擊者有 tag=this 就將暫存記分板設定為 1
execute on attacker if entity @s[tag=interrupt_crit_hit] run scoreboard players set $temp icebird.spell_ready 1
# 如果站存記分板為 1 就將此生物加上 attacked 標籤
execute if score $temp icebird.spell_ready matches 1 run tag @s add interrupt_attacked