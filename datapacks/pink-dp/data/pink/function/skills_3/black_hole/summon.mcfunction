#
execute rotated ~ 0 anchored eyes positioned ^ ^1.5 ^3 run function animated_java:pink_bh1/summon {args: {animation: '1', start_animation: true}}

# u 
execute if score @s pink.mana_u matches 0 run scoreboard players set $u pink.black_hole.damage 0
execute if score @s pink.mana_u matches 1 run scoreboard players set $u pink.black_hole.damage 1
execute if score @s pink.mana_u matches 2 run scoreboard players set $u pink.black_hole.damage 1
execute if score @s pink.mana_u matches 3 run scoreboard players set $u pink.black_hole.damage 1
execute if score @s pink.mana_u matches 4 run scoreboard players set $u pink.black_hole.damage 2
execute if score @s pink.mana_u matches 5 run scoreboard players set $u pink.black_hole.damage 2
execute if score @s pink.mana_u matches 6 run scoreboard players set $u pink.black_hole.damage 3
execute if score @s pink.mana_u matches 7 run scoreboard players set $u pink.black_hole.damage 3
execute if score @s pink.mana_u matches 8 run scoreboard players set $u pink.black_hole.damage 4

scoreboard players operation @s pink.mana_u -= $u pink.black_hole.damage
scoreboard players operation @n[tag=pink.bh1,tag=new] pink.black_hole.damage = $u pink.black_hole.damage

# V
scoreboard players remove @s pink.mana_v 8


# effect 
execute store result score $before pink.black_hole.effect run execute if data entity @s active_effects[]

effect clear @s speed
effect clear @s haste
effect clear @s strength
effect clear @s jump_boost
effect clear @s regeneration
effect clear @s resistance
effect clear @s fire_resistance
effect clear @s water_breathing
effect clear @s night_vision
effect clear @s health_boost
effect clear @s absorption
effect clear @s luck
effect clear @s conduit_power
effect clear @s dolphins_grace
effect clear @s hero_of_the_village
effect clear @s breath_of_the_nautilus

execute store result score $after pink.black_hole.effect run execute if data entity @s active_effects[]
execute store result score @n[tag=pink.bh1,tag=new] pink.black_hole.effect run scoreboard players operation $before pink.black_hole.effect -= $after pink.black_hole.effect

#
tag @n[tag=pink.bh1,tag=new] remove new


#
playsound pink:bh1 player @a ~ ~ ~ 1 1
playsound pink:bh1 player @a ~ ~ ~ 1 0
playsound pink:bh2 player @a ~ ~ ~ 0.5 1
playsound pink:bh2 player @a ~ ~ ~ 0.7 0
playsound pink:bh3 player @a ~ ~ ~ 0.6 1
playsound pink:bh4 player @a ~ ~ ~ 0.5 0

#
effect give @a[distance=..10] darkness 5 0 true

