#

execute as @p at @s run summon area_effect_cloud ~ ~0.3 ~ {custom_particle:{type:"soul"},Duration:40,Radius:0.6,Tags:["MagentaPork"]}
execute as @p at @s run spreadplayers ~ ~ 2 3 false @e[tag=MagentaPork,type=area_effect_cloud,limit=1,sort=nearest]

execute as @p at @s run execute as @e[tag=MagentaPork,type=area_effect_cloud,limit=1,sort=nearest] run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 0

scoreboard players set @s MagentaTimer 0
