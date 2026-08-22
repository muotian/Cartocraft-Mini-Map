# tag
tag @s add pink.armor.black2

# 套裝
scoreboard players add @s pink.armor.black.count 1

execute if entity @s[tag=pink.armor.black1] run function pink:armor/black1/lore_change1 {1:3,2:4,3:5,4:6,slot:"chest"}
execute if entity @s[tag=pink.armor.black3] run function pink:armor/black1/lore_change1 {1:1,2:2,3:3,4:4,slot:"feet"}
execute if entity @s[tag=pink.armor.black2] run function pink:armor/black1/lore_change1 {1:5,2:6,3:7,4:8,slot:"head"}

tag @s[scores={pink.armor.black.count=..3}] remove pink.armor.black_set
tag @s[scores={pink.armor.black.count=3}] add pink.armor.black_set