scoreboard players set $attack.cd gray.boss.data 30
scoreboard players set $random gray.boss.data 0
scoreboard players set $skill_timer gray.boss.data 0
attribute @s movement_speed modifier remove gray.boss.stop_move
attribute @s knockback_resistance modifier remove gray.boss.stop_move
execute as @e[type=item_display,tag=aj.gray_battle_boss_head.root] run function animated_java:gray_battle_boss_head/animations/battle_spawn/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run function animated_java:gray_battle_boss_body/animations/battle_spawn/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_feet.root] run function animated_java:gray_battle_boss_feet/animations/battle_spawn/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] run function animated_java:gray_battle_boss_weapon/animations/battle_spawn/play
scoreboard players reset $force_feet_animated gray.boss.data

function ccmini_gray:map/boss/battle/try_switch_ranged