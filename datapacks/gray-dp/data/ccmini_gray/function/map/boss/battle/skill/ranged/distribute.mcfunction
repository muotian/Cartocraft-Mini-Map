scoreboard players set $attack.cd gray.boss.data -1
execute store result score $random gray.boss.data run random value 1..3

#scoreboard players set $random gray.boss.data 1

execute if score $random gray.boss.data matches 1 run return run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/start

execute if score $random gray.boss.data matches 2 run return run function ccmini_gray:map/boss/battle/skill/ranged/greatsword/start

execute if score $random gray.boss.data matches 3 run return run function ccmini_gray:map/boss/battle/skill/ranged/sword_beam/start




#技能設計計畫書 遠程模式
#編號   id           效果       
# 1 sandsword 招喚3把沙劍然後依序向前投出去 
# 2 greatsword   丟出大劍，然後飛回來
# 3 sword_beam   原地蓄力，然後發射超大劍氣
# 4
# 5