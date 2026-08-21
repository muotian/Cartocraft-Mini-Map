scoreboard players set @s light_green.hurt 1

execute on attacker run tag @s add light_green.attacker

execute if entity @e[tag=light_green.attacker,type=!player,limit=1] run scoreboard players reset @s light_green.hurt_schedule

execute as @n[tag=light_green.attacker] run tag @s remove light_green.attacker


execute store result score $absorption light_green.main.math run data get entity @s AbsorptionAmount
execute if items entity @s hotbar.* *[custom_data~{light_green.hoglin_sword:1b}] if score $absorption light_green.main.math matches 1.. if score @s light_green.hoglin.shield.hold matches 1.. run function light_green:item/big_hoglin/sword/roar/start