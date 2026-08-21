advancement revoke @s only mini_light:area_skill/use_3
scoreboard players set @s mini_light.use_goat_horn 0

playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 2 1
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1.5

scoreboard players set @s mini_light.area_skill_3_cast 12

scoreboard players set $strength player_motion.api.launch 26000
execute rotated ~ -10 run function player_motion:api/launch_looking