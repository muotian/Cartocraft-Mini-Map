execute unless score @s wool_purple.weapon.run matches 1 run return fail
execute if score @s wool_purple.weapon.run matches 1 run scoreboard players reset @s wool_purple.weapon.run_animation
execute if score @s wool_purple.weapon.run matches 1 run scoreboard players reset @s wool_purple.weapon.run

execute if items entity @s weapon.mainhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/run_stop with storage player:data
