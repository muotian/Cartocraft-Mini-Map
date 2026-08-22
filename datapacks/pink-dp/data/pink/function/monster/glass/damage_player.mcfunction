execute unless score @s pink.monster.glass.armor matches 1.. at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1


#
damage @s 4 mob_attack by @n[tag=pink.glass]

scoreboard players add @s pink.monster.glass.armor 35
attribute @s armor modifier add pink.monster.glass.armor -3 add_value

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1.5 ~ 0 0 0 0 1
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1.5 ~ 0 0 0 0 1

#


