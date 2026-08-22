execute as @e[tag=wool_purple.monster] on target run tag @s add wool_purple.target
execute as @e[tag=wool_purple.monster] run team join wool_purple.monster

execute as @e[tag=wool_purple.monster] on target if data entity @s {HurtTime:9s} on attacker run function ordered_splinter:monster/attacker

execute as @e[tag=wool_purple.murderer.spawner,type=armor_stand] at @s run function ordered_splinter:monster/murderer/summon
execute as @e[tag=wool_purple.murderer.spawner,type=armor_stand] at @s run kill @s
scoreboard players set @e[tag=wool_purple.murderer_mannequin,type=mannequin] wool_purple.mob.exist 0
execute as @e[tag=wool_purple.murderer,type=zombie] at @s run function ordered_splinter:monster/murderer/binding
execute as @e[tag=wool_purple.murderer_mannequin,type=mannequin] if score @s wool_purple.mob.exist matches 0 run kill @s

execute as @e[tag=wool_purple.demon.spawner,type=armor_stand] at @s run function ordered_splinter:monster/demon/summon
execute as @e[tag=wool_purple.demon.spawner,type=armor_stand] at @s run kill @s
execute as @e[tag=wool_purple.demon,type=zombie] at @s run function ordered_splinter:monster/demon/tick
execute as @e[tag=wool_purple.acid_spray.entity,type=zombie] at @s run function ordered_splinter:monster/acid_spray/binding
execute as @e[tag=wool_purple.acid_spray,type=marker] at @s run function ordered_splinter:monster/acid_spray/move

execute as @e[tag=wool_purple.fallen_alchemist.spawner,type=armor_stand] at @s run function ordered_splinter:monster/fallen_alchemist/summon
execute as @e[tag=wool_purple.fallen_alchemist.spawner,type=armor_stand] at @s run kill @s
scoreboard players set @e[tag=wool_purple.fallen_alchemist_mannequin,type=mannequin] wool_purple.mob.exist 0
execute as @e[tag=wool_purple.fallen_alchemist,type=zombie] at @s run function ordered_splinter:monster/fallen_alchemist/binding
execute as @e[tag=wool_purple.fallen_alchemist_mannequin,type=mannequin] if score @s wool_purple.mob.exist matches 0 run kill @s
execute as @e[tag=wool_purple.potion,type=splash_potion] at @s run team join wool_purple.green

execute as @e[tag=wool_purple.imp.spawner,type=armor_stand] at @s run function ordered_splinter:monster/imp/summon
execute as @e[tag=wool_purple.imp.spawner,type=armor_stand] at @s run kill @s
scoreboard players set @e[tag=wool_purple.imp_mannequin,type=mannequin] wool_purple.mob.exist 0
execute as @e[tag=wool_purple.imp,type=zombie] at @s run function ordered_splinter:monster/imp/binding
execute as @e[tag=wool_purple.imp_mannequin,type=mannequin] if score @s wool_purple.mob.exist matches 0 run kill @s

execute as @e[tag=wool_purple.demon_guard.spawner,type=armor_stand] at @s run function ordered_splinter:monster/demon_guard/summon
execute as @e[tag=wool_purple.demon_guard.spawner,type=armor_stand] at @s run kill @s
scoreboard players set @e[tag=wool_purple.demon_guard_mannequin,type=mannequin] wool_purple.mob.exist 0
execute as @e[tag=wool_purple.demon_guard,type=zombie] at @s run function ordered_splinter:monster/demon_guard/binding
execute as @e[tag=wool_purple.demon_guard_mannequin,type=mannequin] if score @s wool_purple.mob.exist matches 0 run kill @s

execute as @e[tag=wool_purple.sword_radiance_front,type=marker] at @s run function ordered_splinter:monster/sword_radiance/move
execute as @e[tag=wool_purple.sword_radiance_front,type=marker] at @s anchored eyes run function ordered_splinter:particle/sword_radiance
execute as @e[tag=wool_purple.sword_radiance_behind,type=marker] at @s run function ordered_splinter:monster/sword_radiance/move
execute as @e[tag=wool_purple.sword_radiance_front,type=marker] at @s if entity @n[tag=wool_purple.target,distance=..5] run tag @n[tag=wool_purple.target,distance=..5] add wool_purple.sword_radiance_target
execute as @e[tag=wool_purple.sword_radiance_behind,type=marker] at @s if entity @n[tag=wool_purple.target,distance=..5] run tag @n[tag=wool_purple.target,distance=..5] remove wool_purple.sword_radiance_target
execute as @e[tag=wool_purple.sword_radiance_target,tag=!wool_purple.sword_radiance_damage_cd] at @s run function ordered_splinter:monster/sword_radiance/damage
execute as @e[tag=wool_purple.sword_radiance_damage_cd] at @s run scoreboard players add @s wool_purple.player_damage_cd 1
execute as @e[tag=wool_purple.sword_radiance_damage_cd] at @s if score @s wool_purple.player_damage_cd matches 10 run function ordered_splinter:monster/sword_radiance/attackable_again

execute as @e[tag=wool_purple.malidread.spawner,type=armor_stand] at @s run function ordered_splinter:monster/malidread/summon
execute as @e[tag=wool_purple.malidread.spawner,type=armor_stand] at @s run kill @s

execute as @e[tag=wool_purple.monster] on target run tag @s remove wool_purple.target