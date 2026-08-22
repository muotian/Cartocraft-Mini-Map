#
scoreboard players add @s pink.monster.orderless.cd 1

execute if score @s[tag=up] pink.monster.orderless.cd matches 80.. run function pink:monster/orderless/up
execute if score @s[tag=down] pink.monster.orderless.cd matches 80.. run function pink:monster/orderless/down

execute if predicate pink:hurt at @s run function pink:monster/orderless/tp

