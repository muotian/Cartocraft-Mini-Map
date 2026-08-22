scoreboard players reset @s wool_purple.weapon.attack_type
scoreboard players reset @s wool_purple.weapon.run_animation
scoreboard players reset @s wool_purple.weapon.run

execute if items entity @s weapon.mainhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/summon with storage player:data
