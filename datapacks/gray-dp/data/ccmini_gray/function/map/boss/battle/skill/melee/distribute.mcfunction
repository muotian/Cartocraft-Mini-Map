scoreboard players set $attack.cd gray.boss.data -1
execute store result score $random gray.boss.data run random value 1..4
execute if score $flash_cd gray.boss.data matches 1 if score $random gray.boss.data matches 1 run execute store result score $random gray.boss.data run random value 2..4
scoreboard players reset $flash_cd gray.boss.data

#scoreboard players set $random gray.boss.data 4

execute if score $random gray.boss.data matches 1 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_1/start
execute if score $random gray.boss.data matches 2 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_2/start
execute if score $random gray.boss.data matches 3 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_3/start
execute if score $random gray.boss.data matches 4 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_4/start



#技能設計計畫書 進戰模式 感覺不好命名，用編號吧
#編號   id           效果       
# 1 melee_1   瞬移，使用後冷卻時間短
# 2 melee_2   連續揮拳持續傷害，最後強擊擊退，期間無法移動
# 3 melee_3   向前揮兩刀
# 4 melee_4   原地舉起刀後衝刺同時揮刀，路徑上造成傷害
# 5