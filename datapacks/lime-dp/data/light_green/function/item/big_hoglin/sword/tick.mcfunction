function light_green:item/big_hoglin/sword/max_health/0
execute if score @s light_green.food matches 16.. run effect give @s hunger 1 255 true
execute if score @s light_green.food matches 15 run effect clear @s hunger
execute unless score @s light_green.hoglin.shield.upgrade.keep matches 1.. if items entity @s weapon.mainhand *[custom_data~{light_green.hoglin_sword:1b}] run item modify entity @s weapon.mainhand light_green:deupgrade_sword
execute unless items entity @s weapon.mainhand *[custom_data~{light_green.hoglin_sword:1b}] run return fail
execute unless score @s light_green.hoglin.shield matches 0.. run title @s actionbar [{text:"🛡",color:gray,italic:false},{text:"：0",color:white}]
execute if score @s light_green.hoglin.shield matches 0.. run title @s actionbar [{text:"🛡",color:gray,italic:false},{text:"：",color:white},{score:{name:"@s",objective:light_green.hoglin.shield},color:white}]