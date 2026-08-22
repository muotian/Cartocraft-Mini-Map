#放技能
execute if score $attack.cd gray.boss.data matches 0 run function ccmini_gray:map/boss/battle/skill/melee/distribute
#跑技能tick 
execute if score $attack.cd gray.boss.data matches -1 if score $random gray.boss.data matches 1.. run function ccmini_gray:map/boss/battle/skill/melee/tick
#走路
execute unless predicate ccmini_gray:boss_move run function ccmini_gray:map/boss/battle/move/melee
