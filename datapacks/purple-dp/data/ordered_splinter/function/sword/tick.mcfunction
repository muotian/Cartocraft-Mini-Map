execute as @a[tag=wool_purple.soulrend_user] unless items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] run function ordered_splinter:sword/soulrend/unused

execute as @a[tag=!wool_purple.windflame_longsword_user] if items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] at @s run playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1 1
execute as @a[tag=wool_purple.windflame_longsword_user] unless items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] at @s run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 1 2
execute as @a if items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] run effect give @s fire_resistance infinite 0 true
execute as @a[tag=wool_purple.windflame_longsword_user] unless items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] run effect clear @s fire_resistance
execute as @a if items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] run tag @s add wool_purple.windflame_longsword_user
execute as @a unless items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] run tag @s remove wool_purple.windflame_longsword_user

execute as @e[tag=wool_purple.naraku_fallen_shortsword_target] at @s run function ordered_splinter:sword/naraku_fallen_shortsword/target
execute as @a[tag=wool_purple.naraku_fallen_shortsword_user] unless items entity @s weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] run tag @s remove wool_purple.naraku_fallen_shortsword_user

execute as @a[tag=wool_purple.blade_of_finality_user] at @s run function ordered_splinter:sword/blade_of_finality/user
execute as @a[tag=!wool_purple.blade_of_finality_user] if items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.1 2
execute as @a if items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] run tag @s add wool_purple.blade_of_finality_user
execute as @a unless items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] run tag @s remove wool_purple.blade_of_finality_user

execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{singularity_of_thousandfaces: 1b}] run function ordered_splinter:sword/singularity_of_thousandfaces/black_hole
execute as @e[tag=wool_purple.singularity_of_thousandfaces_target] at @s run function ordered_splinter:sword/singularity_of_thousandfaces/target
execute if score $cycle wool_purple.singularity_cycle matches 40.. run scoreboard players set $cycle wool_purple.singularity_cycle 0
execute as @a[tag=wool_purple.singularity_of_thousandfaces_user] at @s run function ordered_splinter:sword/singularity_of_thousandfaces/user
execute as @a if items entity @s weapon.mainhand *[custom_data~{singularity_of_thousandfaces: 1b}] run tag @s add wool_purple.singularity_of_thousandfaces_user
execute as @a unless items entity @s weapon.mainhand *[custom_data~{singularity_of_thousandfaces: 1b}] run tag @s remove wool_purple.singularity_of_thousandfaces_user

execute as @a if items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}|custom_data~{purity_dagger: 1b}] unless score @s wool_purple.switch.sword matches -1..1 run scoreboard players set @s wool_purple.switch.sword 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}] if items entity @s weapon.offhand *[custom_data~{purity_dagger: 1b}] if score @s wool_purple.switch.sword matches 1 run tag @s add wool_purple.use_purity_dagger
execute as @a if items entity @s weapon.mainhand *[custom_data~{purity_dagger: 1b}] if items entity @s weapon.offhand *[custom_data~{aspectslayer_longsword: 1b}] if score @s wool_purple.switch.sword matches -1 run tag @s add wool_purple.use_aspectslayer_longsword
execute as @a[tag=wool_purple.use_aspectslayer_longsword] run function ordered_splinter:sword/aspectslayer_longsword/carpet_start
execute as @a[tag=wool_purple.use_aspectslayer_longsword] run function ordered_splinter_hand_take:delete with storage player:data
execute as @a[tag=wool_purple.use_purity_dagger] run function ordered_splinter:sword/purity_dagger/comet_start
execute as @a[tag=wool_purple.use_purity_dagger] run function ordered_splinter_hand_take:delete with storage player:data
scoreboard players operation @a[tag=wool_purple.use_aspectslayer_longsword] wool_purple.switch.sword *= -1 wool_purple.switch.sword
scoreboard players operation @a[tag=wool_purple.use_purity_dagger] wool_purple.switch.sword *= -1 wool_purple.switch.sword
execute as @a[tag=wool_purple.use_aspectslayer_longsword] run tag @s remove wool_purple.use_aspectslayer_longsword
execute as @a[tag=wool_purple.use_purity_dagger] run tag @s remove wool_purple.use_purity_dagger
execute as @a if items entity @s weapon.mainhand *[custom_data~{no_offhand: 1b}] if items entity @s weapon.offhand *[custom_data~{aspectslayer_longsword: 1b}|custom_data~{purity_dagger: 1b}] run function ordered_splinter:sword/no_offhand_double

execute as @a if items entity @s weapon.mainhand *[custom_data~{purity_dagger: 1b}] unless score @s wool_purple.comet_cd matches 0..600 run scoreboard players set @s wool_purple.comet_cd 0
execute as @a if score @s wool_purple.comet_cd matches 1..600 run scoreboard players remove @s wool_purple.comet_cd 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{purity_dagger: 1b}] run scoreboard players operation @s wool_purple.comet.sec = @s wool_purple.comet_cd
execute as @a if items entity @s weapon.mainhand *[custom_data~{purity_dagger: 1b}] run scoreboard players operation @s wool_purple.comet.sec /= $20 wool_purple.20
execute as @e[tag=wool_purple.comet,type=marker] at @s run function ordered_splinter:sword/purity_dagger/comet_move
execute as @a if score @s wool_purple.comet_cd matches 599 unless entity @e[tag=wool_purple.comet,type=marker] run title @s actionbar [{"translate":"no_target","color":"dark_green"}]
execute as @a if score @s wool_purple.comet_cd matches 599 if entity @e[tag=wool_purple.comet,type=marker] run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1.2
execute as @a if score @s wool_purple.comet_cd matches 599 if entity @e[tag=wool_purple.comet,type=marker] run playsound minecraft:entity.breeze.idle_ground player @a ~ ~ ~ 2 0.75

execute as @a if items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}] unless score @s wool_purple.carpet_cd matches 0..600 run scoreboard players set @s wool_purple.carpet_cd 0
execute as @a if score @s wool_purple.carpet_cd matches 1..600 run scoreboard players remove @s wool_purple.carpet_cd 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}] run scoreboard players operation @s wool_purple.carpet.sec = @s wool_purple.carpet_cd
execute as @a if items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}] run scoreboard players operation @s wool_purple.carpet.sec /= $20 wool_purple.20
execute as @e[tag=wool_purple.carpet] at @s run function ordered_splinter:sword/aspectslayer_longsword/carpet_executing
execute as @e[tag=wool_purple.carpet_damage] at @s run function ordered_splinter:sword/aspectslayer_longsword/damage_marker

execute as @a at @s if items entity @s weapon.offhand *[custom_data~{no_offhand: 1b}] run function ordered_splinter:sword/no_offhand

execute as @a[tag=wool_purple.eye_ability] run function ordered_splinter:eye_of_truesight/ability_tick
scoreboard players set @a wool_purple.eye_ability 0
execute as @a[tag=wool_purple.eye_ability_raycast] at @s run function ordered_splinter:eye_of_truesight/ability_raycast_tick
execute as @a[tag=!wool_purple.eye_ability_raycast] if score @s wool_purple.eye_ability_raycast matches 100 run scoreboard players set @s wool_purple.eye_ability_raycast 0
execute as @a if items entity @s weapon.mainhand *[custom_data~{eye_of_truesight: 1b}] unless score @s wool_purple.ability_cd matches 0..600 run scoreboard players set @s wool_purple.ability_cd 0
execute as @a if score @s wool_purple.ability_cd matches 1..600 run scoreboard players remove @s wool_purple.ability_cd 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{eye_of_truesight: 1b}] run scoreboard players operation @s wool_purple.ability.sec = @s wool_purple.ability_cd
execute as @a if items entity @s weapon.mainhand *[custom_data~{eye_of_truesight: 1b}] run scoreboard players operation @s wool_purple.ability.sec /= $20 wool_purple.20

execute as @a if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] unless score @s wool_purple.isaiah_cd.1 matches 0..800 run scoreboard players set @s wool_purple.isaiah_cd.1 0
execute as @a if score @s wool_purple.isaiah_cd.1 matches 1..800 run scoreboard players remove @s wool_purple.isaiah_cd.1 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run scoreboard players operation @s wool_purple.isaiah.sec.1 = @s wool_purple.isaiah_cd.1
execute as @a if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run scoreboard players operation @s wool_purple.isaiah.sec.1 /= $20 wool_purple.20
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 200 run playsound minecraft:block.bell.use player @a ~ ~ ~ 2 0.1
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 200 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 2 0.2
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 195 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 185 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 175 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 165 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 155 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 145 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 135 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 125 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a at @s if score @s wool_purple.isaiah_duration.1 matches 115 run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.1 0.05
execute as @a unless score @s wool_purple.isaiah_duration.1 matches 0..200 run scoreboard players set @s wool_purple.isaiah_duration.1 0
execute as @a if score @s wool_purple.isaiah_duration.1 matches 1.. run scoreboard players remove @s wool_purple.isaiah_duration.1 1
execute as @a store result bossbar wool_purple.isaiah.duration value run scoreboard players get @s wool_purple.isaiah_duration.1
execute as @a if score @s wool_purple.isaiah_duration.1 matches 0 run tag @s remove wool_purple.isaiah_ability_1
execute as @a if score @s wool_purple.isaiah_duration.1 matches 0 run bossbar remove wool_purple.isaiah.duration

execute as @a if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] unless score @s wool_purple.isaiah_cd.2 matches 0..1500 run scoreboard players set @s wool_purple.isaiah_cd.2 0
execute as @a if score @s wool_purple.isaiah_cd.2 matches 1..1500 run scoreboard players remove @s wool_purple.isaiah_cd.2 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run scoreboard players operation @s wool_purple.isaiah.sec.2 = @s wool_purple.isaiah_cd.2
execute as @a if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run scoreboard players operation @s wool_purple.isaiah.sec.2 /= $20 wool_purple.20
execute as @e[tag=wool_purple.isaiah_eye,type=item_display] at @s run function ordered_splinter:sword/isaiah/eye_tick
execute as @a[tag=wool_purple.isaiah_ability_2] if score @s wool_purple.isaiah_cd.2 matches 1200 run tag @s remove wool_purple.isaiah_ability_2
execute as @e[tag=wool_purple.isaiah_amethyst,type=block_display] at @s run function ordered_splinter:sword/isaiah/remove_display
execute as @e[tag=wool_purple.isaiah_eye_raycast,type=marker] at @s run function ordered_splinter:sword/isaiah/raycast_move
execute as @e[tag=wool_purple.have_amethyst] at @s run function ordered_splinter:sword/isaiah/have_amethyst

execute as @a if items entity @s weapon.mainhand *[custom_data~{pyrowind_longsword: 1b}] if predicate ordered_splinter:on_fire run function ordered_splinter:sword/pyrowind_longsword/user

execute as @e[tag=wool_purple.pyro_wind,type=marker] at @s run function ordered_splinter:sword/pyrowind_longsword/loop
execute as @e[tag=wool_purple.tornado,type=wolf] at @s run function ordered_splinter:sword/pyrowind_longsword/tick
execute as @a if items entity @s weapon.mainhand *[custom_data~{pyrowind_longsword: 1b}] unless score @s wool_purple.tornado_cd matches 0..800 run scoreboard players set @s wool_purple.tornado_cd 0
execute as @a if score @s wool_purple.tornado_cd matches 1..800 run scoreboard players remove @s wool_purple.tornado_cd 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{pyrowind_longsword: 1b}] run scoreboard players operation @s wool_purple.tornado.sec = @s wool_purple.tornado_cd
execute as @a if items entity @s weapon.mainhand *[custom_data~{pyrowind_longsword: 1b}] run scoreboard players operation @s wool_purple.tornado.sec /= $20 wool_purple.20