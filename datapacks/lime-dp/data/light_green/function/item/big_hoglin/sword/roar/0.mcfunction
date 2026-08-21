scoreboard players remove @s light_green.hoglin.shield.roar 1 
execute if score @s light_green.hoglin.shield.roar matches 15 run tag @s add light_green.attacker
execute if score @s light_green.hoglin.shield.roar matches 15 at @s as @e[type=!#light_green:no_hp,type=!player,distance=..7] run damage @s 2 light_green:rush by @p[tag=light_green.attacker]
execute if score @s light_green.hoglin.shield.roar matches 15 at @s as @e[type=!#light_green:no_hp,type=!player,distance=..7] run function light_green:item/big_hoglin/sword/roar/knockback
execute if score @s light_green.hoglin.shield.roar matches 15 run tag @s remove light_green.attacker
execute if score @s light_green.hoglin.shield.roar matches 10 run tag @s add light_green.attacker
execute if score @s light_green.hoglin.shield.roar matches 10 at @s as @e[type=!#light_green:no_hp,type=!player,distance=..7] run damage @s 2 light_green:rush by @p[tag=light_green.attacker]
execute if score @s light_green.hoglin.shield.roar matches 10 at @s as @e[type=!#light_green:no_hp,type=!player,distance=..7] run function light_green:item/big_hoglin/sword/roar/knockback
execute if score @s light_green.hoglin.shield.roar matches 10 run tag @s remove light_green.attacker
execute if score @s light_green.hoglin.shield.roar matches 5 run tag @s add light_green.attacker
execute if score @s light_green.hoglin.shield.roar matches 5 at @s as @e[type=!#light_green:no_hp,type=!player,distance=..7] run damage @s 2 light_green:rush by @p[tag=light_green.attacker]
execute if score @s light_green.hoglin.shield.roar matches 5 at @s as @e[type=!#light_green:no_hp,type=!player,distance=..7] run function light_green:item/big_hoglin/sword/roar/knockback
execute if score @s light_green.hoglin.shield.roar matches 5 run tag @s remove light_green.attacker