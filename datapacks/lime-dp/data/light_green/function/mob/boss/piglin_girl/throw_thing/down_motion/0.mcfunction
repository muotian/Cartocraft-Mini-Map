execute at @s facing ^ ^ ^-1 positioned 0.0 0.0 0.0 as caba-0-0-0-1 run rotate @s ~ ~
execute at @s facing ^ ^ ^-1 run rotate @s ~ ~
function light_green:random {math1:-50,math2:50}
data modify storage light_green:piglin_girl facing1 set from storage light_green:random random
function light_green:random {math1:-20,math2:20}
data modify storage light_green:piglin_girl facing2 set from storage light_green:random random
function light_green:random {math1:1,math2:7}
data modify storage light_green:piglin_girl long set from storage light_green:random random
function light_green:mob/boss/piglin_girl/throw_thing/down_motion/1 with storage light_green:piglin_girl