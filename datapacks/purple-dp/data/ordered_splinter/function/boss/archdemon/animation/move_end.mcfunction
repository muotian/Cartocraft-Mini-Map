# 當停止移動的計時器歸零，切換回待機動畫並重置所有移動分數
execute if score @s wool_purple.boss_animation matches 0 at @s run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1
execute if score @s wool_purple.boss_animation matches 0 run function animated_java:archdemon/animations/idle/play
execute if score @s wool_purple.boss_animation matches 0 run scoreboard players reset @s wool_purple.boss_move_step