execute on passengers run tag @s add light_green.hoglin_passenger
execute unless entity @n[tag=light_green.hoglin_passenger] run function light_green:ride_hoglin/kill
execute on passengers run tag @s remove light_green.hoglin_passenger
execute if score $hurt light_green.main.math matches 9 run playsound entity.hoglin.hurt player @a ~ ~ ~ 1 1
execute on passengers rotated as @s on vehicle run rotate @s ~ ~
execute on passengers if predicate light_green:enter_skip on vehicle run function light_green:ride_hoglin/space/input
function light_green:ride_hoglin/motion
execute on passengers if predicate light_green:w on vehicle run function light_green:ride_hoglin/motion2 {x:0,z:4}
execute on passengers if predicate light_green:a on vehicle run function light_green:ride_hoglin/motion2 {x:4,z:0}
execute on passengers if predicate light_green:s on vehicle run function light_green:ride_hoglin/motion2 {x:0,z:-4}
execute on passengers if predicate light_green:d on vehicle run function light_green:ride_hoglin/motion2 {x:-4,z:0}
execute if score @s light_green.hoglin_sprint matches 1.. run scoreboard players remove @s light_green.hoglin_sprint 1
execute if score @s light_green.hoglin_time matches 1.. run function light_green:ride_hoglin/space/0
execute if score @s light_green.hoglin_walk_time matches 1.. run function light_green:ride_hoglin/walk/0
execute if score @s light_green.hoglin_walk matches 1.. run function light_green:ride_hoglin/walk/1
execute if entity @s[tag=light_green.walk_check,tag=!light_green.jump_check] unless score @s light_green.hoglin_sprint matches 1..7 run function light_green:ride_hoglin/modify_motion
execute if entity @s[tag=light_green.jump_check] unless score @s light_green.hoglin_sprint matches 1.. run data modify entity @s Motion set from entity caba-0-0-0-1 Pos
execute if entity @s[tag=light_green.walk_check] run function light_green:ride_hoglin/damage
tag @s remove light_green.walk_check
tag @s remove light_green.jump_check