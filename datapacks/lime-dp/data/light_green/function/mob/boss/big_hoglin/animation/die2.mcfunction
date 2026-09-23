execute if score @s light_green.boss.animation matches 55 run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 55 run playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 55 run playsound minecraft:entity.camel_husk.dash hostile @a ~ ~ ~ 3 2

execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.boss.big_hoglin.target]
execute if score @s light_green.boss.animation matches 0 run function light_green:item/hoglin_teeth
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $kill_hoglin light_green.main.math 1
execute if score @s light_green.boss.animation matches 0 as @a[tag=light_green.boss.challenger] run function light_green:item/big_hoglin/sword/upgrade
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/kill