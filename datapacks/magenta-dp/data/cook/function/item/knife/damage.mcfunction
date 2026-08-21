
particle sweep_attack ~ ~0.5 ~ 2 2 2 0.01 1 force

$execute as @e[distance=..5,type=!player,type=!#cook:except,limit=1,sort=random] at @s run function cook:item/knife/damage2 {dmg:$(dmg)}


# $execute as @e[distance=..5,type=!player,type=!#cook:except,limit=1,sort=random] at @s run say $(dmg)

# $say $(dmg)

