function light_green:random {math1:-360,math2:360}
execute store result storage light_green:boss rotate float 0.001 run data get storage light_green:random random 1000
function light_green:random {math1:3,math2:6}
execute store result storage light_green:boss size int 1 run data get storage light_green:random random 1
function light_green:mob/boss/big_hoglin/rush_summon/mud/summon2 with storage light_green:boss