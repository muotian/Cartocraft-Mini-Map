execute store result score $y light_green.main.math run data get entity @s Pos[1] 100
execute unless score $y light_green.main.math < $damage_y_detect light_green.main.math run return fail
$damage @s $(damage) light_green:axe_earth_quake2 by @e[tag=light_green.attacker,distance=..10,limit=1]
function light_green:break_defance/apply