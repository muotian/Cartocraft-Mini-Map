execute if score @s wool_purple.weapon.run matches 1 run return fail
scoreboard players set @s wool_purple.weapon.run 1
scoreboard players set @s wool_purple.weapon.run_animation 5

execute if items entity @s weapon.mainhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/run with storage player:data
