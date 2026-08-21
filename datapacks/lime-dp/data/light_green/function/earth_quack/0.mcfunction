execute at @s store result storage light_green:fall_block y int 1 run data get entity @s Pos[1]
summon marker ~ ~ ~ {Tags:["light_green.new_fall"]}
execute as @e[tag=light_green.new_fall,type=marker,limit=1,distance=..3] at @s run function light_green:earth_quack/3 with storage light_green:fall_block