execute at @n[tag = red_wool.boss] run summon lightning_bolt

scoreboard players set 150 red_wool.tmp 110
scoreboard players set 100 red_wool.tmp 100
scoreboard players operation boss_take_damage_muti red_wool.boss *= 110 red_wool.tmp
scoreboard players operation boss_take_damage_muti red_wool.boss /= 100 red_wool.tmp

damage @n[tag = red_wool.boss] 10 red_wool:true_explosion by @p

scoreboard players remove boss_light_bar red_wool.boss 1
execute if score boss_light_bar red_wool.boss matches 0.. run schedule function red_wool:boss/summon_creeper/summon_light_bot 5t