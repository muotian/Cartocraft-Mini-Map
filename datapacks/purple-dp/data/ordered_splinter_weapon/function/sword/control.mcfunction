function ordered_splinter_weapon:sword/double/replace_double with storage player:data
execute if score @s wool_purple.weapon.double matches 1 run return fail

execute if score @s wool_purple.weapon.attack_type matches 1 run return run function ordered_splinter_weapon:sword/attack/1 with storage player:data

execute if score @s wool_purple.weapon.attack_type matches 2 run return run function ordered_splinter_weapon:sword/attack/2 with storage player:data

execute if score @s wool_purple.weapon.attack_type matches 3 store result storage player:data damage double 0.75 run data get storage player:data damage
execute if score @s wool_purple.weapon.attack_type matches 3 run return run function ordered_splinter_weapon:sword/attack/3 with storage player:data

execute if score @s wool_purple.weapon.attack_type matches 4 run return run function ordered_splinter_weapon:sword/attack/4 with storage player:data