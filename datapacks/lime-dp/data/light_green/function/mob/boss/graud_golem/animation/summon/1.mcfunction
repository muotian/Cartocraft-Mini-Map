execute if score $kuru3 light_green.main.math matches 1 run return run function light_green:mob/boss/graud_golem/skill/kurukuru_end
scoreboard players add $laser_speed light_green.main.math 1
execute store result storage light_green:boss laser_damage float 0.0015 run scoreboard players get $laser_speed light_green.main.math
execute store result storage light_green:boss pitch float 0.004 run scoreboard players get $laser_speed light_green.main.math
function light_green:mob/boss/graud_golem/animation/rotate with storage light_green:boss
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/graud_golem/animation/kuru2_sound/sound with storage light_green:boss
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/graud_golem/animation/kuru2_sound/0 with storage light_green:boss