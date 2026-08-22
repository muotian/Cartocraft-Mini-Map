#
$scoreboard players remove @s pink.animation.alpha $(tick)
execute if score @s pink.animation.alpha matches ..0 run scoreboard players set @s pink.animation.alpha 0
execute store result entity @s text_opacity byte 1 run scoreboard players get @s pink.animation.alpha

