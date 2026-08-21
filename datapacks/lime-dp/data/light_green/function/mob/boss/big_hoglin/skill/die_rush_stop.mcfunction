kill @e[tag=light_green.boss.big_hoglin.target]
execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_nothing/play
scoreboard players set @s light_green.mob.ai 26
scoreboard players reset @s light_green.boss.attack_type