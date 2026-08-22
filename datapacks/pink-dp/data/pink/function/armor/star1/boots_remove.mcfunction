# tag
tag @s remove pink.armor.star3

# 
scoreboard players remove @s pink.armor.star.count 1

execute if entity @s[tag=pink.armor.star1] run function pink:armor/star1/lore_change1 {1:3,2:4,3:5,4:6,slot:"chest"}
execute if entity @s[tag=pink.armor.star3] run function pink:armor/star1/lore_change1 {1:1,2:2,3:3,4:4,slot:"feet"}
execute if entity @s[tag=pink.armor.star2] run function pink:armor/star1/lore_change1 {1:5,2:6,3:7,4:8,slot:"head"}

tag @s[scores={pink.armor.star.count=..3}] remove pink.armor.star_set
tag @s[scores={pink.armor.star.count=3}] add pink.armor.star_set