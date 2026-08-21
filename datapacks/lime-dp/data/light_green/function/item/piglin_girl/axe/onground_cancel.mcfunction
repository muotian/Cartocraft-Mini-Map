attribute @s gravity modifier remove light_green:double_axe_jump
attribute @s gravity modifier remove light_green:double_axe_jump_1
attribute @s gravity modifier remove light_green:double_axe_jump_2
attribute @s gravity modifier remove light_green:double_axe_jump_3
attribute @s gravity modifier remove light_green:double_axe_jump_4
attribute @s gravity modifier remove light_green:double_axe_jump_5
effect clear @s resistance
function light_green:item/piglin_girl/axe/get_resistance/0 with storage light_green:player
scoreboard players reset @s light_green.sprint.resistance
scoreboard players reset @s light_green.crack
tag @s remove light_green.crack_apply
tag @s remove light_green.crack_cancel
tag @s add light_green.clear_fall