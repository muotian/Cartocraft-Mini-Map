scoreboard players set @s black.core_attack_cd 80
execute if items entity @s weapon.mainhand *[custom_data~{black:{mheart_lvl:3b}}] run function black:item/mheart/add
execute if items entity @s weapon.mainhand *[custom_data~{black:{spare_gear:1b}}] run function black:item/spare_gear
execute if items entity @s armor.head player_head[custom_data~{black_head:1b}] run function black:item/head/i1_ini
execute if items entity @s armor.head player_head[custom_data~{black_head:2b}] run function black:item/head/i2_ini
item modify entity @s weapon.offhand black:remove_glint