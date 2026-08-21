execute if score @s light_green.hoglin.shield matches 1.. store result storage light_green:weapon shield int 1 run scoreboard players get @s light_green.hoglin.shield
execute unless score @s light_green.hoglin.shield matches 1.. run data modify storage light_green:weapon shield set value 0
function light_green:item/big_hoglin/sword/right/1 with storage light_green:weapon