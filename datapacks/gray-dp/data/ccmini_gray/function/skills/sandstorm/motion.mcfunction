#用作吸引效果
execute store result score $ps.x gray.Pos run data get entity @e[type=item_display,tag=gray.sandstorm,limit=1] Pos[0] 1000
execute store result score $ps.y gray.Pos run data get entity @e[type=item_display,tag=gray.sandstorm,limit=1] Pos[1] 1000
execute store result score $ps.z gray.Pos run data get entity @e[type=item_display,tag=gray.sandstorm,limit=1] Pos[2] 1000
execute store result score $pe.x gray.Pos run data get entity @s Pos[0] 1000
execute store result score $pe.y gray.Pos run data get entity @s Pos[1] 1000
execute store result score $pe.z gray.Pos run data get entity @s Pos[2] 1000
scoreboard players operation $ps.x gray.Pos -= $pe.x gray.Pos
scoreboard players operation $ps.y gray.Pos -= $pe.y gray.Pos 
scoreboard players operation $ps.z gray.Pos -= $pe.z gray.Pos

execute as @s store result entity @s Motion[0] double 0.00025 run scoreboard players get $ps.x gray.Pos
execute as @s store result entity @s Motion[1] double 0.00025 run scoreboard players get $ps.y gray.Pos
execute as @s store result entity @s Motion[2] double 0.00025 run scoreboard players get $ps.z gray.Pos

