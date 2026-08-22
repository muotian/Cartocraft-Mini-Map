execute as @a[gamemode=!spectator] at @s run tp @e[type=marker,tag=gray.boss.afterbattle.tp,limit=1]
execute if score $gopr_skill_locked gray.map_event matches 1 run tellraw @a [{translate:"gray.message.gopr_locked",color:"red"}]
execute if score $gopr_skill_locked gray.map_event matches -1 run tellraw @a [{translate:"gray.message.gopr_upgrade",color:"red"}]
execute as @a[gamemode=adventure] run gamemode survival
function ccmini_gray:map/boss_coffin/chest
scoreboard players set $state gray.map_event 5
#tp回位置marker summon marker ~ ~ ~ {Tags:["gray.boss.afterbattle.tp"]}