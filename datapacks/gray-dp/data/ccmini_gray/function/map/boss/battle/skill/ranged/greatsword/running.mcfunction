execute if score $skill_timer gray.boss.data matches 59 as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] at @s positioned ^-0.875 ^0.6875 ^1.875 run tp ~ ~ ~
execute if score $skill_timer gray.boss.data matches 60 as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] at @s run function ccmini_gray:map/boss/battle/skill/ranged/greatsword/throw

execute if score $skill_timer gray.boss.data matches 33..60 as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] at @s run function ccmini_gray:map/boss/battle/skill/ranged/greatsword/move_forward
execute if score $skill_timer gray.boss.data matches 3..31 as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] at @s run function ccmini_gray:map/boss/battle/skill/ranged/greatsword/move_back


execute if score $skill_timer gray.boss.data matches 3 as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] run tag @s remove gray.boss.battle.greatsword.throw
execute if score $skill_timer gray.boss.data matches 3 as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] run function animated_java:gray_battle_boss_weapon/animations/battle_spawn/play

execute if score $skill_timer gray.boss.data matches ..0 run return run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/end
scoreboard players remove $skill_timer gray.boss.data 1