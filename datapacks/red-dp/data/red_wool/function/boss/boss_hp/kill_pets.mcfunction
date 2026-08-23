advancement revoke @a only red_wool:boss/kill_pets
scoreboard players set 105 red_wool.tmp 105
scoreboard players set 100 red_wool.tmp 100
scoreboard players operation boss_take_damage_muti red_wool.boss *= 105 red_wool.tmp
scoreboard players operation boss_take_damage_muti red_wool.boss /= 100 red_wool.tmp

damage @n[tag = red_wool.boss] 10 red_wool:true_explosion by @s

execute at @n[tag = red_wool.boss] run summon lightning_bolt

bossbar set red_wool.boss color white
schedule clear red_wool:boss/boss_hp/set_name2
schedule function red_wool:boss/boss_hp/set_name2 5t