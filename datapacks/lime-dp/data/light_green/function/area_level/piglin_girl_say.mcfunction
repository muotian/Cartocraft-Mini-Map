scoreboard players set $area_end light_green.main.math 1
execute if score $killed_by_piglin_girl light_green.main.math matches 5 as @p run scoreboard players set @s light_green.dialog 11
execute if score $killed_by_piglin_girl light_green.main.math matches 5 run scoreboard players set $take_wool light_green.main.math 1
execute if score $piglin_girl_level2 light_green.main.math matches 1 as @p run scoreboard players set @s light_green.dialog 14
execute if score $piglin_girl_level2 light_green.main.math matches 1 run scoreboard players set $take_wool light_green.main.math 2
execute as @p run scoreboard players set @s light_green.dialog.time 80