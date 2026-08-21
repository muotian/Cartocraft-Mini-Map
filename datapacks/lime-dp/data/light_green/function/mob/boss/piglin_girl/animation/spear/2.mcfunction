execute on target run tag @s add light_green.damage_locator
execute facing entity @n[tag=light_green.damage_locator] feet run rotate @s ~ 0
execute as @s at @n[tag=light_green.target] anchored feet positioned ~ ~-2 ~ facing entity @s eyes facing ^ ^ ^-1 run rotate @s ~ ~
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1.5 1
execute if score @s light_green.boss.animation matches 3 facing entity @n[tag=light_green.damage_locator] feet rotated ~ 0 positioned 0.0 0.0 0.0 run tp caba-0-0-0-1 ^ ^0.25 ^-1.5
execute if score @s light_green.boss.animation matches 3 run data modify entity @s Motion set from entity caba-0-0-0-1 Pos
execute as @n[tag=light_green.damage_locator] run tag @s remove light_green.damage_locator
execute if score @s light_green.boss.animation matches ..1 store result score $Onground light_green.main.math run data get entity @s OnGround
execute if score @s light_green.boss.animation matches ..1 if score $Onground light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/spear/end