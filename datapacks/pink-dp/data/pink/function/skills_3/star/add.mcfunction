#
particle minecraft:explosion_emitter
particle minecraft:end_rod ~ ~1.5 ~ 0.1 0.1 0.1 0.5 40
particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.1 30

playsound pink:star_skill3_2 player @a ~ ~ ~ 1 1
playsound pink:star_skill3_2 player @a ~ ~ ~ 1 1
playsound pink:star_skill3_2 player @a ~ ~ ~ 1 0
playsound pink:star_skill3_3 player @a ~ ~ ~ 1 1
playsound pink:star_skill3_3 player @a ~ ~ ~ 1 0
playsound pink:star_skill3_1 player @a ~ ~ ~ 0.4 1


# 加
scoreboard players add @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,type=!villager] pink._star.marker 2

# 總和
scoreboard players set $marker pink._star.marker 0
execute as @e[type=!#pink:object,type=!player,distance=..5,scores={pink._star.marker=1..}] run scoreboard players operation $marker pink._star.marker += @s pink._star.marker
execute if score $marker pink._star.marker matches 40.. run scoreboard players set $marker pink._star.marker 40

# Text
execute store result storage pink:star text_motion_x double 0.01 run random value -20..20
execute store result storage pink:star text_motion_y double 0.01 run random value 15..25
execute store result storage pink:star text_motion_z double 0.01 run random value -20..20

execute store result storage pink:star damage_text byte 1 run scoreboard players get $marker pink._star.marker
execute facing entity @p eyes anchored eyes run function pink:skills_3/star/damage_text with storage pink:star {}

# Damage
execute store result storage pink:star damage float 0.1 run scoreboard players operation $marker pink._star.marker *= $*2.5 pink._star.marker
execute as @e[type=!#pink:object,type=!player,distance=..5] run function pink:skills_3/star/damage with storage pink:star {}

