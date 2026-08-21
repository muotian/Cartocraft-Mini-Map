
execute store result score $absorption light_green.main.math run data get entity @s AbsorptionAmount
execute if score @s light_green.hoglin.shield.hold matches 0.. if score $hurt light_green.main.math matches 9 if score $absorption light_green.main.math matches 1.. run playsound block.anvil.land player @s ~ ~ ~ 1 0
execute if score @s light_green.hoglin.shield.hold matches 0.. run scoreboard players remove @s light_green.hoglin.shield.hold 1
execute unless score @s light_green.hoglin.shield.hold matches 0 run return fail
execute unless score $absorption light_green.main.math matches 1.. run return run function light_green:item/big_hoglin/sword/right/upgrade_unshield
function light_green:item/big_hoglin/sword/right/upgrade_take_shield