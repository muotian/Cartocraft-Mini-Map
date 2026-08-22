scoreboard players set $skill_timer gray.boss.data 60
execute as @e[type=item_display,tag=aj.gray_battle_boss_head.root] run function animated_java:gray_battle_boss_head/animations/battle_ranged_sword_beam/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run function animated_java:gray_battle_boss_body/animations/battle_ranged_sword_beam/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_feet.root] run function animated_java:gray_battle_boss_feet/animations/battle_ranged_sword_beam/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] run function animated_java:gray_battle_boss_weapon/animations/battle_ranged_sword_beam/play
scoreboard players set $force_feet_animated gray.boss.data 1
attribute @s minecraft:movement_speed modifier add gray.boss.stop_move -1024 add_value
attribute @s minecraft:knockback_resistance modifier add gray.boss.stop_move 100 add_value