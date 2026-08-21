scoreboard players add @s light_green.adapt_bullet.summon 1
scoreboard players set @s light_green.adapt_bullet.equip 2
execute if items entity @s hotbar.* *[custom_data~{light_green.hoglin_sword:1b}] run return run function light_green:item/golem/mod/adapt/hoglin with storage light_green:player
execute if score $hurt light_green.main.math matches 9 run function light_green:item/golem/mod/adapt/hurt with storage light_green:player
$execute store result score $adapt_keep light_green.main.math run execute if entity @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker]
execute if score @s light_green.adapt_bullet.summon matches 20 unless score $adapt_keep light_green.main.math matches 5.. run function light_green:item/golem/mod/adapt/bullet/keep
execute if score @s light_green.adapt_bullet.summon matches 20.. run scoreboard players reset @s light_green.adapt_bullet.summon
execute if items entity @s hotbar.* *[custom_data~{light_green.golden_axe:1}] if items entity @s hotbar.* *[custom_data~{light_green.golden_dagger:1}] if items entity @s hotbar.* *[custom_data~{light_green.golden_spear:1}] run function light_green:item/golem/mod/adapt/piglin with storage light_green:player