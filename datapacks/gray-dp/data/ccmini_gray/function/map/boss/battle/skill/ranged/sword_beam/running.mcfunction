

execute if score $skill_timer gray.boss.data matches 20 positioned ~ ~1.2 ~ run function ccmini_gray:map/boss/battle/skill/ranged/sword_beam/shot


execute if score $skill_timer gray.boss.data matches ..0 run return run function ccmini_gray:map/boss/battle/skill/ranged/sword_beam/end
scoreboard players remove $skill_timer gray.boss.data 1