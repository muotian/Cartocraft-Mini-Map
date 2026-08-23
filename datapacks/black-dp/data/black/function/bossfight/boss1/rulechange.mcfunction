gamerule immediate_respawn true
execute store result score $keepinv icebird.core run gamerule keep_inventory
gamerule keep_inventory true
execute at @n[tag=black.boss1_center] run spawnpoint @a ~9 ~1 ~