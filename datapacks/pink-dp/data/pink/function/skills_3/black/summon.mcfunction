#
scoreboard players remove @s pink.mana_v 7

#
execute anchored eyes positioned ^ ^ ^5 as @e[distance=..6,type=!#pink:object,type=!wolf,type=!player,type=!villager,limit=1,sort=nearest] run tag @s add target
execute anchored eyes positioned ^ ^ ^5 as @e[distance=..6,type=villager,tag=pink.train.dummy,limit=1,sort=nearest] run tag @s add target

execute at @n[tag=target] facing entity @s eyes rotated ~ 0 run function animated_java:pink_skill3_d/summon {args: {animation: '1', start_animation: true}}
scoreboard players operation @s pink.black.skill3.id = aj.last_id aj.id


ride @n[tag=pink.black3.d,tag=new] mount @n[tag=target]

tag @e[tag=target] remove target

playsound pink:black_ultimate_skill3 player @a ~ ~ ~ 0.7 1
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.3 0.8

# Armor - 
execute if items entity @s armor.head *[custom_data~{pink_armor:1b,pink_armor_:"black"}] run scoreboard players add @s pink.black.strengthen_attack 1
scoreboard players set @s[scores={pink.black.strengthen_attack=4..}] pink.black.strengthen_attack 4