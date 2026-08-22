execute if score @s wool_purple.weapon.attack_cold matches 1.. run return run scoreboard players set @s wool_purple.weapon.input_ahead 1
execute if score @s wool_purple.weapon.player_hand_animation matches 1..6 run return fail
scoreboard players reset @s wool_purple.weapon.input_ahead
function ordered_splinter_weapon:convert/l_click_count
execute if score @s wool_purple.weapon.run matches 1 run function ordered_splinter_weapon:convert/run_stop

execute if items entity @s weapon.mainhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/l_click with storage player:data
