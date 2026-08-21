execute as caba-0-0-0-1 at @s positioned 0.0 0.0 0.0 rotated ~4 ~ run rotate @s ~ ~
execute as caba-0-0-0-1 at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["light_green.facing"]}
execute as @n[tag=light_green.facing,type=marker] at @s run function light_green:mob/boss/piglin_girl/animation/smoke/2 with storage light_green:smoke
kill @n[tag=light_green.facing]