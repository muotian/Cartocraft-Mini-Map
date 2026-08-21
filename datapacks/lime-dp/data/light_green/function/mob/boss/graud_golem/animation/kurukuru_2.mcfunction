execute if score $laser_speed light_green.main.math matches 500.. run return run function light_green:mob/boss/graud_golem/skill/kurukuru_end
execute store result storage light_green:boss laser_speed float 0.02 run scoreboard players add $laser_speed light_green.main.math 1
execute if score $laser_speed light_green.main.math matches 100..150 store result storage light_green:boss laser_damage float 0.0015 run scoreboard players get $laser_speed light_green.main.math
execute if score $laser_speed light_green.main.math matches 150..200 store result storage light_green:boss laser_damage float 0.003 run scoreboard players get $laser_speed light_green.main.math
execute if score $laser_speed light_green.main.math matches 200..300 store result storage light_green:boss laser_damage float 0.006 run scoreboard players get $laser_speed light_green.main.math
execute if score $laser_speed light_green.main.math matches 300..400 store result storage light_green:boss laser_damage float 0.0012 run scoreboard players get $laser_speed light_green.main.math
execute if score $laser_speed light_green.main.math matches 400..500 store result storage light_green:boss laser_damage float 0.024 run scoreboard players get $laser_speed light_green.main.math
execute store result storage light_green:boss pitch float 0.004 run scoreboard players get $laser_speed light_green.main.math
function light_green:mob/boss/graud_golem/animation/rotate with storage light_green:boss
execute if score @s light_green.main.math matches 0..400 if score $laser_speed light_green.main.math matches 0..119 run function light_green:mob/boss/graud_golem/laser/ready/run
execute if score @s light_green.main.math matches 0..400 if score $laser_speed light_green.main.math matches 120.. run function light_green:mob/boss/graud_golem/laser/run
execute if score @s light_green.main.math matches 401..800 if score $laser_speed light_green.main.math matches 0..89 run function light_green:mob/boss/graud_golem/laser/ready/run
execute if score @s light_green.main.math matches 401..800 if score $laser_speed light_green.main.math matches 90.. run function light_green:mob/boss/graud_golem/laser/run
execute if score @s light_green.main.math matches 801..1200 if score $laser_speed light_green.main.math matches 0..74 run function light_green:mob/boss/graud_golem/laser/ready/run
execute if score @s light_green.main.math matches 801..1200 if score $laser_speed light_green.main.math matches 75.. run function light_green:mob/boss/graud_golem/laser/run
execute if score @s light_green.main.math matches 1201..1600 if score $laser_speed light_green.main.math matches 0..39 run function light_green:mob/boss/graud_golem/laser/ready/run
execute if score @s light_green.main.math matches 1201..1600 if score $laser_speed light_green.main.math matches 40.. run function light_green:mob/boss/graud_golem/laser/run
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/graud_golem/animation/kuru2_sound/sound with storage light_green:boss
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/graud_golem/animation/kuru2_sound/0 with storage light_green:boss