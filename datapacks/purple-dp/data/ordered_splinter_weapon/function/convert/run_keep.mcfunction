scoreboard players reset @s wool_purple.weapon.run_animation

execute if items entity @s weapon.mainhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/run_keep with storage player:data
