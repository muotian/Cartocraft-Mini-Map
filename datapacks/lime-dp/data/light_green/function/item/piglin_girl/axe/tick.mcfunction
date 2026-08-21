$data modify storage light_green:weapon player.$(id).axe set from entity @s SelectedItem
$execute if items entity @s weapon.offhand *[custom_data~{light_green.golden_axe:1}] run data modify storage light_green:weapon player.$(id).off_hand_cannon set from entity @s equipment.offhand
$execute store result storage light_green:weapon player.$(id).axe_damage double 0.01 run attribute @s attack_damage get 100

scoreboard players operation $piglin_use.storage light_green.main.math = @s light_green.piglin_girl_weapon.use
execute store result score @s light_green.piglin_girl_weapon.total run scoreboard players operation @s light_green.piglin_girl_weapon.use += @s light_green.adapt_piglin_girl_weapon
scoreboard players operation @s light_green.piglin_girl_weapon.use = $piglin_use.storage light_green.main.math

function light_green:item/piglin_girl/actionbar/dagger
execute unless items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] unless items entity @s weapon.offhand *[custom_data~{light_green.golden_dagger:1}] run function light_green:item/piglin_girl/actionbar/not

execute if entity @s[tag=light_green.agony.master] run function light_green:mob/boss/piglin_girl/agony/damage/0_player with storage light_green:player

execute if items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s container.* *[custom_data~{light_green.golden_spear:1}] run scoreboard players add @s light_green.dagger_load 1
execute if items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s container.* *[custom_data~{light_green.golden_spear:1}] if score @s light_green.dagger_load matches 55 unless score @s light_green.dagger_storage matches 18.. run scoreboard players add @s light_green.dagger_storage 1
execute if items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s container.* *[custom_data~{light_green.golden_spear:1}] if score @s light_green.dagger_load matches 55 if score @s light_green.dagger_storage matches 18.. run scoreboard players add @s light_green.dagger_storage.ready_use 1
execute if items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s container.* *[custom_data~{light_green.golden_spear:1}] if score @s light_green.dagger_load matches 55 if score @s light_green.dagger_storage matches 18.. if score @s light_green.dagger_storage.ready_use matches 3.. unless score @s light_green.piglin_girl_weapon.use matches 40.. run scoreboard players add @s light_green.piglin_girl_weapon.use 1
execute if items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s container.* *[custom_data~{light_green.golden_spear:1}] if score @s light_green.dagger_load matches 55 if score @s light_green.dagger_storage matches 18.. if score @s light_green.dagger_storage.ready_use matches 3.. run scoreboard players remove @s light_green.dagger_storage.ready_use 3
execute if items entity @s container.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s container.* *[custom_data~{light_green.golden_spear:1}] if score @s light_green.dagger_load matches 55.. run scoreboard players reset @s light_green.dagger_load

execute if score @s light_green.spear_sprint matches ..16 run function light_green:item/piglin_girl/spear/left_click2 with storage light_green:weapon