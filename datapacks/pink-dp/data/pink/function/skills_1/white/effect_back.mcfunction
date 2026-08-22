execute if data storage pink:effect {id:"minecraft:instant_health"} run return fail

#
$effect give @s $(id) $(duration) $(amplifier) $(show_icon)

data remove storage pink:effect duration
data remove storage pink:effect amplifier
data remove storage pink:effect id
data remove storage pink:effect show_icon
