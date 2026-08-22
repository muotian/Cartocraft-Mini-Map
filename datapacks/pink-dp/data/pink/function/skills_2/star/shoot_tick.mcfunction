#
tp @s ^ ^ ^.95

scoreboard players add @s pink.star.skill1.use 1
execute if score @s pink.star.skill1.use matches 20.. run function animated_java:pink_star_skill1_2/remove/this

# hit
tag @s add this_card
execute as @a if score @s pink.id = @n[tag=this_card,tag=pink.star2.2] pink.id run tag @s add owner 

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[dx=0,tag=!owner,type=!#pink:object] run function pink:skills_2/star/hit

tag @s remove this_card
tag @p[tag=owner] remove owner

