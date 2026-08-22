scoreboard players remove @s wool_purple.boss_hurttime 1
execute if score @s wool_purple.boss_hurttime matches 0 run tag @s remove wool_purple.boss_hurt
execute if score @s wool_purple.boss_hurttime matches 0 run function animated_java:archdemon/variants/default/apply