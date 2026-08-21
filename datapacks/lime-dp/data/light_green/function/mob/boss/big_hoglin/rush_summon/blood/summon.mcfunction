function light_green:random {math1:-360,math2:360}
execute store result storage light_green:boss rotate float 0.001 run data get storage light_green:random random 1000
function light_green:random {math1:3,math2:6}
execute store result storage light_green:boss size int 1 run data get storage light_green:random random 1
execute unless entity @n[tag=light_green.blood,distance=..2] if score $hoglin_limit light_green.main.math matches 1 run return run function light_green:mob/boss/big_hoglin/rush_summon/blood/summon2_15_ with storage light_green:boss
execute unless entity @n[tag=light_green.blood,distance=..2] run function light_green:mob/boss/big_hoglin/rush_summon/blood/summon2 with storage light_green:boss