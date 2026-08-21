tag @s add light_green.crack_clear
execute at @s as @e[distance=..1,type=item_display] if score @s light_green.crack_id = @n[tag=light_green.crack_clear] light_green.crack_id run kill @s
tag @s remove light_green.crack_clear
execute store result storage light_green:boss id int 1 run scoreboard players get @s light_green.crack_id
function light_green:mob/boss/piglin_girl/crack/binding/rm with storage light_green:boss
kill @s