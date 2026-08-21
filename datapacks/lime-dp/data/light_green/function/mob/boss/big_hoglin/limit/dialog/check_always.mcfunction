function light_green:arena/difficulty/get
execute if score $hoglin_limit_always light_green.main.math matches 1 run function light_green:mob/boss/big_hoglin/start
execute unless score $hoglin_limit_always light_green.main.math matches 1 run function light_green:mob/boss/big_hoglin/limit/dialog/start