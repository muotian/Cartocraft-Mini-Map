# Owner
tag @s add this_card
execute as @a if score @s pink.id = @n[tag=this_card,tag=pink.star2.2] pink.id run tag @s add owner_2

# Damage

execute as @n[dx=0,tag=!owner,type=!#pink:object] at @s run function pink:skills_2/star/add

#
function animated_java:pink_star_skill1_2/remove/this



