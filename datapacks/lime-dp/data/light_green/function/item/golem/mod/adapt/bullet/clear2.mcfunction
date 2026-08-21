$execute at @e[tag=light_green.bullet.$(id).target,distance=..50] run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 10 50
$tag @e remove light_green.bullet.$(id).target
kill @s