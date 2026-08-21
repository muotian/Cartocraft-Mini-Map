execute as caba-0-0-0-1 at @s positioned 0.0 0.0 0.0 rotated ~4 ~ run rotate @s ~ ~
execute as caba-0-0-0-1 at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["light_green.facing"]}
data modify storage light_green:smoke pos1 set from entity @n[tag=light_green.facing,type=marker] Pos[0]
data modify storage light_green:smoke pos2 set from entity @n[tag=light_green.facing,type=marker] Pos[1]
data modify storage light_green:smoke pos3 set from entity @n[tag=light_green.facing,type=marker] Pos[2]
execute at @s rotated as caba-0-0-0-1 positioned ^ ^ ^9 run function light_green:mob/boss/piglin_girl/animation/axe/earth_quack/2 with storage light_green:smoke
kill @n[tag=light_green.facing]