# 由schedule執行
execute store result score $gametime mini_light.lantern.schedule run time query gametime
execute as @e[tag=mini_light.coal_lantern] at @s if score @s mini_light.lantern.schedule = $gametime mini_light.lantern.schedule run function mini_light:weapons/lantern/coal/animation1

schedule function mini_light:weapons/lantern/coal/schedule2 3t append