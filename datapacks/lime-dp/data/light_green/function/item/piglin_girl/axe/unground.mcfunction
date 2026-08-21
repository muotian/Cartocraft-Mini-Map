scoreboard players add @s light_green.crack 1

execute if score @s light_green.crack matches 1.. run attribute @s safe_fall_distance modifier add light_green:double_axe_jump 1000 add_value

execute if score @s light_green.crack matches 6.. run attribute @s gravity modifier add light_green:double_axe_jump_1 0.08 add_value

execute if score @s light_green.crack matches 8.. run attribute @s gravity modifier add light_green:double_axe_jump_2 0.10 add_value

execute if score @s light_green.crack matches 10.. run attribute @s gravity modifier add light_green:double_axe_jump_3 0.12 add_value

execute if score @s light_green.crack matches 12.. run attribute @s gravity modifier add light_green:double_axe_jump_4 0.14 add_value

execute if score @s light_green.crack matches 14.. run attribute @s gravity modifier add light_green:double_axe_jump_5 0.16 add_value


execute store result score $Onground light_green.main.math run data get entity @s OnGround

execute if entity @s[tag=light_green.crack_cancel] run function light_green:item/piglin_girl/axe/claer_gravity

execute unless score $Onground light_green.main.math matches 1 run return fail

function light_green:item/piglin_girl/axe/onground