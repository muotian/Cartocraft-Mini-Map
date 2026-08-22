# Run
scoreboard players set @s pink.star.skill.cd 260

# Card
scoreboard players set @s pink.star.skill1.card_count 4

playsound pink:star_skill1 player @s ~ ~ ~ 0.4 1

execute rotated ~ 0 run function animated_java:pink_star_skill1/summon {args: {animation: '4', start_animation: true}}
scoreboard players operation @n[tag=new,tag=pink.star2.1] pink.id = @s pink.id
tag @n[tag=pink.star2.1,tag=new] remove new





