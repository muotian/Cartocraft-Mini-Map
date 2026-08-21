$data modify storage light_green:boss rotate1 set value $(rotate1)
$data modify storage light_green:boss rotate2 set value $(rotate2)
function light_green:random {math1:2,math2:50}
execute store result storage light_green:boss power double 0.1 run data get storage light_green:random random
function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon with storage light_green:boss
