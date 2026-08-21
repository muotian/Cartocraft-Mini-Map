item replace entity @s armor.head from entity @p[tag=light_green.damage_test.target] armor.head
item replace entity @s armor.chest from entity @p[tag=light_green.damage_test.target] armor.chest
item replace entity @s armor.legs from entity @p[tag=light_green.damage_test.target] armor.legs
item replace entity @s armor.feet from entity @p[tag=light_green.damage_test.target] armor.feet
attribute @s armor modifier add light_green:damage_test -100 add_value
attribute @s armor_toughness modifier add light_green:damage_test -100 add_value
data modify entity @s Health set from entity @p[tag=light_green.damage_test.target] Health
$damage @s $(damage) light_green:second_life
execute store result score $health light_green.main.math run data get entity @s Health 100