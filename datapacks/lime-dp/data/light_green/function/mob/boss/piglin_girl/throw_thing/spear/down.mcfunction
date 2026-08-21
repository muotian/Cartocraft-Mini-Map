tag @s add light_green.hit
execute if entity @s[tag=light_green.from_player] run return run kill @s
data modify entity @s transformation set value {left_rotation:[0.704,-0.068,-0.704,-0.068],right_rotation:[0,0,0,1],translation:[0,0.5,0],scale:[1.5,1.5,1.5]}
summon item ~ ~ ~ {Tags:["light_green","light_green.boss","light_green.boss.piglin_girl.throw.down","light_green.new.mob","light_green.mob"],PickupDelay:-1,Item:{id:stick,components:{item_model:"light_green:nomodel",max_stack_size:1}},Motion:[0,0.2,0]}
function light_green:mob/boss/piglin_girl/throw_thing/down_motion/0
ride @s mount @n[tag=light_green.new.mob]
tag @n[tag=light_green.new.mob] remove light_green.new.mob