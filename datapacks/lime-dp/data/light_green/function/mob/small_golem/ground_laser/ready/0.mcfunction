execute at @s store result storage light_green:fall_block y int 1 run data get entity @s Pos[1]
$data modify storage light_green:fall_block id set value $(id)
summon marker ~ ~ ~ {Tags:["light_green.new_laser"]}
execute as @n[tag=light_green.new_laser] at @s run function light_green:mob/small_golem/ground_laser/ready/1 with storage light_green:fall_block
execute as @n[tag=light_green.new_laser] at @s run kill @s