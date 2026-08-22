function ccmini_gray:map/boss/battle/remove
scoreboard players reset $player_boss_battle_amount gray.boss.data
bossbar set gray.boss.hp_display visible false
kill @e[type=item_display,tag=gray.boss.battle.sandsword]
function animated_java:gray_sword_beam/remove/all