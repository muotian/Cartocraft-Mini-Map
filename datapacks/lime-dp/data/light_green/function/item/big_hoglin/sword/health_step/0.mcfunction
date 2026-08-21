execute store result score $max_health light_green.main.math run attribute @s max_health get
execute store result score $max_health_step1 light_green.main.math run scoreboard players operation $max_health light_green.main.math /= $5 light_green.main.math
execute store result score $max_health light_green.main.math run attribute @s max_health get
scoreboard players operation $max_health light_green.main.math /= $5 light_green.main.math
execute store result score $max_health_step2 light_green.main.math run scoreboard players operation $max_health light_green.main.math *= $2 light_green.main.math
execute store result score $max_health light_green.main.math run attribute @s max_health get
scoreboard players operation $max_health light_green.main.math /= $5 light_green.main.math
execute store result score $max_health_step3 light_green.main.math run scoreboard players operation $max_health light_green.main.math *= $3 light_green.main.math
execute store result score $max_health light_green.main.math run attribute @s max_health get
scoreboard players operation $max_health light_green.main.math /= $5 light_green.main.math
execute store result score $max_health_step4 light_green.main.math run scoreboard players operation $max_health light_green.main.math *= $4 light_green.main.math
execute store result score $max_health_step5 light_green.main.math run attribute @s max_health get
function light_green:item/big_hoglin/sword/health_step/1