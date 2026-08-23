#電器自爆
scoreboard players add @s green_wool.device_boom_time 1
execute if entity @s[scores={green_wool.device_boom_time=100..}] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.1 0.1 0.1 0.5 5
execute if entity @s[scores={green_wool.device_boom_time=100..}] at @s run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1 1
execute if entity @s[scores={green_wool.device_boom_time=140..}] at @s run function green_wool:dismantle/device_boom2