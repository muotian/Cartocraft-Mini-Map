function animated_java:archdemon/animations/die/play
scoreboard players set @s wool_purple.boss_animation 36
scoreboard players set @s wool_purple.boss_type -1
execute as a11-0-0-0-1 run data modify entity @s NoAI set value 1b
bossbar set minecraft:wool_purple.boss_hp players