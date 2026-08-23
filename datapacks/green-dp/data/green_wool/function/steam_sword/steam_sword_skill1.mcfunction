#蹲下觸發
scoreboard players add @s green_wool.steam_sworld_skill2 1
execute if entity @s[tag=!green_wool.steam_sword_skill_player] run scoreboard players set @s green_wool.steam_sworld_skill_time 200
tag @s add green_wool.steam_sword_skill_player

execute if entity @s[scores={green_wool.steam_sworld_skill2=1}] run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
execute if entity @s[scores={green_wool.steam_sworld_skill2=1}] run playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 1 1
execute if entity @s[scores={green_wool.steam_sworld_skill2=1}] run item modify entity @s weapon.offhand green_wool:fire1
execute if entity @s[scores={green_wool.steam_sworld_skill2=1}] run particle cloud ^ ^1.5 ^0.1 0 0 0 0.1 10
execute if entity @s[scores={green_wool.steam_sworld_skill2=1}] run particle cloud ^ ^1.5 ^0.1 0 0 0 0.1 10
execute if entity @s[scores={green_wool.steam_sworld_skill2=2}] run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1.5
execute if entity @s[scores={green_wool.steam_sworld_skill2=2}] run playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 1 1
execute if entity @s[scores={green_wool.steam_sworld_skill2=2}] run item modify entity @s weapon.offhand green_wool:fire2
execute if entity @s[scores={green_wool.steam_sworld_skill2=2}] run particle cloud ^ ^1.5 ^0.1 0 0 0 0.1 100
execute if entity @s[scores={green_wool.steam_sworld_skill2=2}] run particle cloud ^ ^1.5 ^0.1 0 0 0 0.1 100
execute if entity @s[scores={green_wool.steam_sworld_skill2=3}] run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 2
execute if entity @s[scores={green_wool.steam_sworld_skill2=3}] run playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 1 1
execute if entity @s[scores={green_wool.steam_sworld_skill2=3}] run item modify entity @s weapon.offhand green_wool:fire3
execute if entity @s[scores={green_wool.steam_sworld_skill2=3}] run particle cloud ^ ^1.5 ^0.1 0 0 0 0.1 500
execute if entity @s[scores={green_wool.steam_sworld_skill2=3}] run particle cloud ^ ^1.5 ^0.1 0 0 0 0.1 500