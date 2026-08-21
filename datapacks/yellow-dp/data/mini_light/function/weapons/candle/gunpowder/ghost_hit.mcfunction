# 執行者、執行位置是鬼魂
tag @s add this
execute on passengers on origin at @s as @e[tag=this] run function mini_light:weapons/gunpowder/little_explosion
playsound entity.generic.explode player @a ~ ~ ~ 0.5 1.2
particle explosion ~ ~1 ~ 1360 0 6049 0.001 0
tp @s ~ ~-100 ~
kill @s