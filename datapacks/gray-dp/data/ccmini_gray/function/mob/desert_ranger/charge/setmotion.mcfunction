tag @s remove gray.new
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $pt.x gray.Pos
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $pt.y gray.Pos
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $pt.z gray.Pos