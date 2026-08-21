function light_green:item/big_hoglin/sword/upgrade/clear
item modify entity @s weapon.mainhand light_green:deupgrade_sword
data modify storage light_green:weapon rotate set from entity @s Rotation[0]
execute at @s positioned ~ ~1 ~ run function light_green:item/big_hoglin/sword/swing/0 with storage light_green:weapon
scoreboard players operation @s light_green.hoglin_swing.damage_real /= $10 light_green.main.math
scoreboard players operation @s light_green.hoglin_sword.damage /= $10 light_green.main.math
execute store result storage light_green:weapon damage int 1 run scoreboard players operation @s light_green.hoglin_swing.damage_real += @s light_green.hoglin_sword.damage
function light_green:item/big_hoglin/sword/swing/damage with storage light_green:weapon
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2 0