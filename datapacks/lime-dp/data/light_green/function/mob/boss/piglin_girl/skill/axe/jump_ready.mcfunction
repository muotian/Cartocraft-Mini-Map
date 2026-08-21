function light_green:random {math1:2,math2:8}
tag @s add light_green.boss.piglin_girl.axe.jump_ready
scoreboard players operation $piglin_girl_axe_jump_target light_green.main.math = $random light_green.main.math
execute store result storage light_green:smoke score int 1 run scoreboard players get $piglin_girl_axe_jump light_green.main.math
scoreboard players set $piglin_girl_axe_jump light_green.main.math 1