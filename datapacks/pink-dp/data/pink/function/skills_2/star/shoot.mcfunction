#
execute store result storage pink:star card_count_b byte 1 run scoreboard players get @s pink.star.skill1.card_count

scoreboard players remove @s pink.star.skill1.card_count 1

playsound pink:star_skill1_shoot1 player @s ~ ~ ~ 0.7 1.3
playsound pink:star_skill1_shoot3 player @s ~ ~ ~ 0.5 1
playsound minecraft:block.lever.click player @s ~ ~ ~ 1 1.5

# Card 
execute if score @s pink.star.skill1.card_count matches 3 at @s rotated ~-1 ~ anchored eyes positioned ^0.1 ^-.25 ^.2 run function animated_java:pink_star_skill1_2/summon {args: {animation: 'shoot_r', start_animation: true}}
execute if score @s pink.star.skill1.card_count matches 2 at @s rotated ~1 ~ anchored eyes positioned ^-0.1 ^-.25 ^.2 run function animated_java:pink_star_skill1_2/summon {args: {animation: 'shoot_l', start_animation: true}}
execute if score @s pink.star.skill1.card_count matches 1 at @s rotated ~-0.5 ~ anchored eyes positioned ^0.15 ^-.25 ^.2 run function animated_java:pink_star_skill1_2/summon {args: {animation: 'shoot_r', start_animation: true}}
execute if score @s pink.star.skill1.card_count matches 0 at @s rotated ~0.5 ~ anchored eyes positioned ^-0.15 ^-.25 ^.2 run function animated_java:pink_star_skill1_2/summon {args: {animation: 'shoot_l', start_animation: true}}



scoreboard players operation @n[tag=pink.star2.2,tag=new] pink.id = @s pink.id
tag @n[tag=pink.star2.2,tag=new] remove new

# Card count change 
execute store result storage pink:star card_count_a byte 1 run scoreboard players get @s pink.star.skill1.card_count

tag @s add this_p

execute as @e[tag=pink.star2.1] if score @s pink.id = @p[tag=this_p] pink.id run function pink:skills_2/star/card_count_change with storage pink:star {}

tag @s remove this_p

# 
execute unless score @s pink.star.skill1.card_count matches 0 run return fail

tag @s add this

execute as @e[tag=pink.star2.1,type=item_display] if score @s pink.id = @p[tag=this] pink.id run function animated_java:pink_star_skill1/remove/this

tag @s remove this

