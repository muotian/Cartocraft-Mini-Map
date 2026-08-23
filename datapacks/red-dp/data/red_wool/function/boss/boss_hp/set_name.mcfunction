execute store result bossbar minecraft:red_wool.boss max run scoreboard players get max_hp red_wool.boss
execute store result bossbar minecraft:red_wool.boss value run scoreboard players get hp red_wool.boss
bossbar set red_wool.boss color white
schedule clear red_wool:boss/boss_hp/set_name2
schedule function red_wool:boss/boss_hp/set_name2 5t