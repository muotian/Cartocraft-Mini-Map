execute if score $boss_spirit_pos icebird.boss1 matches 1..25 run tp @s ~ ~0.002 ~ facing entity @p[distance=..6]
execute if score $boss_spirit_pos icebird.boss1 matches 26..50 run tp @s ~ ~-0.002 ~ facing entity @p[distance=..6]
execute if score $boss_spirit_pos icebird.boss1 matches 51.. run scoreboard players set $boss_spirit_pos icebird.boss1 0
execute positioned ~ ~0.25 ~ run function black:bossfight/npc_wings