$execute at @e[tag=light_green.bullet.$(id).target,distance=..50] run particle minecraft:wax_off ~ ~1 ~ 0 0 0 10 5
$execute at @e[tag=light_green.bullet.$(id).target,distance=..50] run playsound item.honey_bottle.drink hostile @a ~ ~ ~ 1 1
$tag @e remove light_green.bullet.$(id).target
kill @s