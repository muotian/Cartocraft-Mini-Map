
execute if score $skill_timer gray.boss.data matches 9 anchored feet facing entity @e[tag=gray.boss_target,distance=..100] feet rotated ~ 0 positioned ^ ^ ^ run function ccmini_gray:map/boss/battle/skill/melee/melee_4/raycast

execute if score $skill_timer gray.boss.data matches ..0 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_4/end
scoreboard players remove $skill_timer gray.boss.data 1