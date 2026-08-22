tag @s add gray.sand_forge_sword.attack_target.temp
execute if score @s gray.sfs_attack matches 60 positioned ~ ~5 ~4 run function ccmini_gray:skills/sand_forge_sword/summon_sword_1
execute if score @s gray.sfs_attack matches 55 positioned ~ ~7 ~-3 run function ccmini_gray:skills/sand_forge_sword/summon_sword_1
execute if score @s gray.sfs_attack matches 50 positioned ~6 ~4 ~-6 run function ccmini_gray:skills/sand_forge_sword/summon_sword_1
execute if score @s gray.sfs_attack matches 45 positioned ~-7 ~5 ~-3 run function ccmini_gray:skills/sand_forge_sword/summon_sword_1
execute if score @s gray.sfs_attack matches 40 positioned ~5 ~6 ~5 run function ccmini_gray:skills/sand_forge_sword/summon_sword_1
execute if score @s gray.sfs_attack matches 25 positioned ~ ~7 ~ run function ccmini_gray:skills/sand_forge_sword/summon_sword_2
execute if score @s gray.sfs_attack matches 20 run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 5
execute if score @s gray.sfs_attack matches 20 at @s run playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 1.5 1

scoreboard players remove @s gray.sfs_attack 1
execute if score @s gray.sfs_attack matches ..1 as @e[type=item_display,tag=gray.sand_forge_sword.rightclick_attack,tag=gray.sand_forge_sword.rightclick_attack_stop] if score @s gray.id = @e[type=marker,tag=gray.sand_forge_sword.attack_target.temp,limit=1] gray.id run kill @s
execute if score @s gray.sfs_attack matches ..1 run kill @s
tag @s remove gray.sand_forge_sword.attack_target.temp