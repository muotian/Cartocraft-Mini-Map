playsound item.firecharge.use block @a ~ ~ ~ 0.5 1
scoreboard players add $get_ember_amount gray.map_event 1
kill @e[type=marker,tag=gray.guide.3_1,limit=1,distance=..5]
execute as @e[type=snowball,tag=gray.ember,distance=..0.5,limit=1,sort=nearest] at @s run kill @s
kill @s