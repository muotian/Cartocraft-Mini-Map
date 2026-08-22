particle cloud ~ ~0.5 ~ 0.5 1 0.5 0 60
execute if entity @e[tag=gray.boss_target,limit=1,distance=8..] anchored feet rotated ~ 0 positioned ^ ^ ^ run return run function ccmini_gray:map/boss/battle/skill/melee/melee_1/raycast_ranged
execute anchored feet rotated ~ 0 positioned ^ ^ ^ run function ccmini_gray:map/boss/battle/skill/melee/melee_1/raycast_close
