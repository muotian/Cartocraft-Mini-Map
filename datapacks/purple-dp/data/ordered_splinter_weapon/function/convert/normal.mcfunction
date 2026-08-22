$execute anchored eyes positioned ^ ^ ^ run tp @n[tag=$(id)-hand] ~ ~ ~ ~ ~

execute if score @s wool_purple.weapon.player_hand_animation matches 1.. run scoreboard players remove @s wool_purple.weapon.player_hand_animation 1
execute if score @s wool_purple.weapon.player_hand_animation matches 0 run scoreboard players reset @s wool_purple.weapon.attack_type

execute if score @s wool_purple.weapon.run_animation matches 1.. run scoreboard players remove @s wool_purple.weapon.run_animation 1
execute if score @s wool_purple.weapon.run_animation matches 0 run function ordered_splinter_weapon:convert/run_keep

execute if score @s wool_purple.weapon.attack_cold matches 1.. run scoreboard players remove @s wool_purple.weapon.attack_cold 1
execute if score @s wool_purple.weapon.attack_cold matches 0 if score @s wool_purple.weapon.input_ahead matches 1 run function ordered_splinter_weapon:convert/l_click

execute unless score @s wool_purple.weapon.double matches 1 store result storage player:data damage double 0.001 run attribute @s attack_damage get 1000
execute if score @s wool_purple.weapon.double matches 1 store result storage player:data damage double 0.0005 run attribute @s attack_damage get 1000
execute if score @s wool_purple.weapon.double matches 1 store result storage player:data damage_offhand double 0.0005 run attribute @s attack_damage get 1000

execute if predicate sprint unless score @s wool_purple.weapon.player_hand_animation matches 1.. run function ordered_splinter_weapon:convert/run
execute unless predicate sprint run function ordered_splinter_weapon:convert/run_stop


execute store result score @s wool_purple.weapon.slot run data get entity @s SelectedItemSlot
execute unless score @s wool_purple.weapon.slot = @s wool_purple.weapon.slot_late run function ordered_splinter_weapon:replace_item
execute store result score @s wool_purple.weapon.slot_late run scoreboard players get @s wool_purple.weapon.slot


function ordered_splinter_weapon:replace_offhand

execute if items entity @s weapon.mainhand *[custom_data~{weapon:{type:sword}}] run return run function ordered_splinter_weapon:sword/control
