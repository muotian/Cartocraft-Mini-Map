# 執行者：霆紋侍祭
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunder_patterned_priest.ready 0
execute store result score @s brown_wool.thunder_patterned_priest.random run random value 1..2

# cd
scoreboard players set @s brown_wool.thunder_patterned_priest.cd 160

# 技能1
execute at @s as @a[distance=..8] run playsound entity.evoker.cast_spell player @s
execute rotated ~ 0 run summon vex ^1 ^2.5 ^ {Tags:["brown_wool.thunder_patterned_priest.cast1"],attributes:[{id:max_health,base:2}],NoAI:true,DeathTime:20,Glowing:1b}
execute rotated ~ 0 run summon vex ^-1 ^2.5 ^ {Tags:["brown_wool.thunder_patterned_priest.cast1"],attributes:[{id:max_health,base:2}],NoAI:true,DeathTime:20,Glowing:1b}



