
execute if entity @a[tag=gray.boss_target,distance=..5] run rotate @s facing entity @a[tag=gray.boss_target,limit=1] feet

execute if score $skill_timer gray.boss.data matches 24..46 anchored eyes positioned ^ ^-0.5 ^1.5 run function ccmini_gray:map/boss/battle/skill/melee/melee_2/punch_damage
execute if score $skill_timer gray.boss.data matches ..0 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_2/end
scoreboard players remove $skill_timer gray.boss.data 1