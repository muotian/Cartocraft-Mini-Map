scoreboard players reset @s wool_purple.weapon.attack_type
scoreboard players reset @s wool_purple.weapon.player_hand_animation
scoreboard players reset @s wool_purple.weapon.attack_cold


execute if entity @s[tag=sword_model] run return run function animated_java:sword_model/remove/this
execute if entity @s[tag=sword_double_model] run return run function animated_java:sword_double_model/remove/this
#execute if entity @s[tag=gloves_model] run return run function ordered_splinter_weapon:gloves/delete/0