# 執行者為任何受傷的生物

# 初始化一個暫存的記分板
scoreboard players set $temp icebird.core 0
scoreboard players set $temp2 icebird.core 0
# 將執行者轉移到該生物的攻擊者，如果攻擊者有 tag=this 就將暫存記分板設定為 1
execute on attacker if entity @s[tag=black.fake_this] run scoreboard players set $temp icebird.core 1
execute on attacker if items entity @s[tag=black.fake_this] weapon.mainhand *[custom_data~{black:{mheart_lvl:1b}}] run scoreboard players set $temp2 icebird.core 1
# 如果站存記分板為 1 就將此生物加上 attacked 標籤
execute if score $temp icebird.core matches 1 run tag @s add black.fake_attacked
execute if score $temp2 icebird.core matches 1 run tag @s add black.fake_weapon