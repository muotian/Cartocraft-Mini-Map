# 執行者、執行位置是spark
execute as @n[tag=my_marker,distance=..0.5] on vehicle run damage @s 4 mini_light:player_spark
execute as @n[tag=my_marker,distance=..0.5] on vehicle run data modify entity @s[predicate=!mini_light:weapons/on_fire] Fire set value 120s
execute as @n[tag=my_marker,distance=..0.5] run kill @s
kill @s