scoreboard players remove @s light_green.hoglin.shield.upgrade.keep 1
execute store result storage light_green:weapon up_damage int 1 run scoreboard players get @s light_green.hoglin.shield.upgrade
execute store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id
execute if items entity @s weapon.mainhand *[custom_data~{light_green.hoglin_sword:1b}] run function light_green:item/big_hoglin/sword/upgrade/1 with storage light_green:weapon
execute unless items entity @s weapon.mainhand *[custom_data~{light_green.hoglin_sword:1b}] run function light_green:item/big_hoglin/sword/upgrade/-1 with storage light_green:weapon
execute if score @s light_green.hoglin.shield.upgrade.keep matches 0 run function light_green:item/big_hoglin/sword/upgrade/clear with storage light_green:weapon