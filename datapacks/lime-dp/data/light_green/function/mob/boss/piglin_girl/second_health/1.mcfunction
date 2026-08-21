scoreboard players operation $piglin_girl.modify.storage light_green.main.math = $piglin_girl.modify.base light_green.main.math

scoreboard players operation $piglin_girl.modify.base light_green.main.math *= $piglin_girl.health.base light_green.main.math
scoreboard players operation $piglin_girl.modify.base light_green.main.math /= $100 light_green.main.math
scoreboard players operation @s light_green.custom.health += $piglin_girl.modify.base light_green.main.math
execute store result bossbar light_green:piglin_girl max run scoreboard players get @s light_green.custom.health

scoreboard players operation $piglin_girl.modify.base light_green.main.math = $piglin_girl.modify.storage light_green.main.math
scoreboard players operation $piglin_girl.modify.base light_green.main.math *= $piglin_girl.multipie.base light_green.main.math
scoreboard players operation $piglin_girl.modify.base light_green.main.math /= $100 light_green.main.math

scoreboard players remove $pc light_green.main.math 1
execute if score $pc light_green.main.math matches 1.. run return run function light_green:mob/boss/piglin_girl/second_health/1