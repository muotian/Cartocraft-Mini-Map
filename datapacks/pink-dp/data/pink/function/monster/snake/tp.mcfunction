#
tag @s add this

execute as @e[tag=pink.snake] if score @s pink.monster.snake.id = @n[tag=pink.snake] pink.monster.snake.id run tag @s add id_same

tag @s remove this

# tp 
execute as @n[tag=pink.snake_2,tag=id_same] at @n[tag=pink.snake_1,tag=id_same] facing entity @s feet run tp @s ^ ^ ^2 ~180 ~
execute as @n[tag=pink.snake_3,tag=id_same] at @n[tag=pink.snake_2,tag=id_same] facing entity @s feet run tp @s ^ ^ ^2 ~180 ~
execute as @n[tag=pink.snake_4,tag=id_same] at @n[tag=pink.snake_3,tag=id_same] facing entity @s feet run tp @s ^ ^ ^2 ~180 ~
execute as @n[tag=pink.snake_5,tag=id_same] at @n[tag=pink.snake_4,tag=id_same] facing entity @s feet run tp @s ^ ^ ^2 ~180 ~
execute as @n[tag=pink.snake_6,tag=id_same] at @n[tag=pink.snake_5,tag=id_same] facing entity @s feet run tp @s ^ ^ ^2 ~180 ~

# hp
execute as @e[tag=id_same,tag=pink.snake,predicate=pink:hurt] run function pink:monster/snake/hurt

# die
execute store result score $count pink.monster.snake.id run execute if entity @e[tag=id_same]
execute unless score $count pink.monster.snake.id matches 6 run kill @e[tag=id_same]




# 
tag @e[tag=id_same] remove id_same
