execute if score $phase icebird.boss1 matches 2 run return fail
scoreboard players operation @n[tag=icebird.boss1] black.boss_real.hp -= @n[tag=icebird.boss1] black.boss_hpmax
scoreboard players set $bossbartick_2 icebird.boss1 10