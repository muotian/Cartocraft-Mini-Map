scoreboard players operation $big_hoglin.modify.storage light_green.main.math = $big_hoglin.modify.base light_green.main.math

scoreboard players operation $big_hoglin.modify.base light_green.main.math *= $big_hoglin.health.base light_green.main.math
scoreboard players operation $big_hoglin.modify.base light_green.main.math /= $100 light_green.main.math
scoreboard players operation @n[tag=light_green.new.mob] light_green.custom.health += $big_hoglin.modify.base light_green.main.math

scoreboard players operation $big_hoglin.modify.base light_green.main.math = $big_hoglin.modify.storage light_green.main.math
scoreboard players operation $big_hoglin.modify.base light_green.main.math *= $big_hoglin.multipie.base light_green.main.math
scoreboard players operation $big_hoglin.modify.base light_green.main.math /= $100 light_green.main.math

scoreboard players remove $pc light_green.main.math 1
function light_green:mob/boss/big_hoglin/start_health/skin/0
execute if score $pc light_green.main.math matches 1.. run return run function light_green:mob/boss/big_hoglin/start_health/1