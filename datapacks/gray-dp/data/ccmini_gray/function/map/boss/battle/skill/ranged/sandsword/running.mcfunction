execute if score $skill_timer gray.boss.data matches 50 at @s anchored eyes positioned ^ ^1 ^ run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/summon
execute if score $skill_timer gray.boss.data matches 0..50 at @s anchored eyes positioned ^ ^1 ^ as @e[type=item_display,tag=gray.boss.battle.sandsword.locate] run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/locate
execute if score $skill_timer gray.boss.data matches 35 as @e[type=item_display,tag=gray.boss.battle.sandsword_1,limit=1] run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/shot
execute if score $skill_timer gray.boss.data matches 30 as @e[type=item_display,tag=gray.boss.battle.sandsword_2,limit=1] run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/shot
execute if score $skill_timer gray.boss.data matches 25 as @e[type=item_display,tag=gray.boss.battle.sandsword_3,limit=1] run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/shot
execute if score $skill_timer gray.boss.data matches 0..35 as @e[type=item_display,tag=gray.boss.battle.sandsword.move] at @s run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/move


execute if score $skill_timer gray.boss.data matches 20 as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run function animated_java:gray_battle_boss_body/animations/battle_spawn/play

execute if score $skill_timer gray.boss.data matches ..0 run kill @e[tag=gray.boss.battle.sandsword]
execute if score $skill_timer gray.boss.data matches ..0 run return run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/end
scoreboard players remove $skill_timer gray.boss.data 1