# 由schedule執行
execute store result score $gametime mini_light.lantern.schedule run time query gametime
execute as @a if score @s mini_light.lantern.schedule = $gametime mini_light.lantern.schedule run tag @s add mini_light.coal_lantern_player
execute as @e[tag=mini_light.coal_lantern] at @s if score @s mini_light.lantern.schedule = $gametime mini_light.lantern.schedule run function mini_light:weapons/lantern/coal/animation2
tag @a remove mini_light.coal_lantern_player

schedule function mini_light:weapons/lantern/coal/schedule3 4t append