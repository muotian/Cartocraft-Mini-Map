scoreboard players set @s black.core_attack_cd 80
execute if items entity @s weapon.mainhand *[custom_data~{black:{rusty_claw:1b}}] run function black:item/rusty_claw
execute if items entity @s armor.head player_head[custom_data~{black_head:3b}] run function black:item/head/i3_ini
execute if items entity @s armor.head player_head[custom_data~{black_head:4b}] run function black:item/head/i4_ini
item modify entity @s weapon.offhand black:remove_glint