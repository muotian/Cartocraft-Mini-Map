# cd
scoreboard players set @s pink.star.skill.cd 320

#
effect give @s slowness 1 1 true
effect give @s blindness 1 0 true

execute if score @s pink.player_health matches 5.. run damage @s 4 pink:void by @s
execute if score @s pink.player_health matches 4.. run damage @s 3 pink:void by @s
execute if score @s pink.player_health matches 3.. run damage @s 2 pink:void by @s
execute if score @s pink.player_health matches 2.. run damage @s 1 pink:void by @s

scoreboard players add @s pink.black.strengthen_attack 3
scoreboard players set @s[scores={pink.black.strengthen_attack=4..}] pink.black.strengthen_attack 4

effect give @s[predicate=pink:effect/strength0] strength 5 1 false
effect give @s[predicate=!pink:effect/strength0] strength 8 0 false

#
playsound pink:star_skill1 player @s ~ ~ ~ .5 .5
playsound pink:black_skill2_1 player @s ~ ~ ~ 0.3 1
playsound minecraft:entity.phantom.bite player @s ~ ~ ~ 1 0.6

execute rotated 0 0 run function animated_java:pink_black2/summon {args: {animation: '1', start_animation: true}}
scoreboard players operation @s aj.id = aj.last_id aj.id

particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.000,0.000,0.000],scale:1.2} ~ ~1.5 ~ .3 .4 .3 0 15 normal

# Armor - weakness
execute if items entity @s armor.head *[custom_data~{pink_armor:1b,pink_armor_:"black"}] run effect give @e[distance=..6,type=!#pink:object,type=!player] weakness 10 0 false