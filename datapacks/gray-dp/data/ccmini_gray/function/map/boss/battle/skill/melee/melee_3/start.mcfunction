scoreboard players set $skill_timer gray.boss.data 26

execute as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run function animated_java:gray_battle_boss_body/animations/battle_melee_3/play
execute as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] run function animated_java:gray_battle_boss_weapon/animations/battle_melee_3/play
