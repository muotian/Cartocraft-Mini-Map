# 執行者、執行位置是spark
scoreboard players operation $search mini_light.spark_id = @s mini_light.spark_id
execute as @e[tag=mini_light.spark_marker,type=marker] if score @s mini_light.spark_id = $search mini_light.spark_id run tag @s add my_marker