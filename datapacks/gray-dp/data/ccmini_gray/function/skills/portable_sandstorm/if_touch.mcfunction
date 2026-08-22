#撞生物
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,limit=1,type=!armor_stand,type=!player,nbt={DeathTime:0s}] on passengers at @s run return run function ccmini_gray:skills/portable_sandstorm/summon
#撞方塊
execute on passengers run tag @s add gray.passenger

execute store result score @s gray.Motion.x run data get entity @s Motion[0] 1000
execute store result score @s gray.Motion.y run data get entity @s Motion[1] 1000
execute store result score @s gray.Motion.z run data get entity @s Motion[2] 1000

scoreboard players operation @s gray.preMotion.x -= @s gray.Motion.x
scoreboard players operation @s gray.preMotion.y -= @s gray.Motion.y
scoreboard players operation @s gray.preMotion.z -= @s gray.Motion.z
#如果Motion變化很大且接近0就表示撞到東西了
execute if score @e[type=item_display,tag=gray.passenger,limit=1] gray.distance matches 1.. if score @s gray.Motion.x matches -50..50 unless score @s gray.preMotion.x matches -100..100 on passengers run return run function ccmini_gray:skills/portable_sandstorm/summon
execute if score @e[type=item_display,tag=gray.passenger,limit=1] gray.distance matches 1.. if score @s gray.Motion.y matches -50..50 unless score @s gray.preMotion.y matches -100..100 on passengers run return run function ccmini_gray:skills/portable_sandstorm/summon
execute if score @e[type=item_display,tag=gray.passenger,limit=1] gray.distance matches 1.. if score @s gray.Motion.z matches -50..50 unless score @s gray.preMotion.z matches -100..100 on passengers run return run function ccmini_gray:skills/portable_sandstorm/summon

scoreboard players operation @s gray.preMotion.x = @s gray.Motion.x
scoreboard players operation @s gray.preMotion.y = @s gray.Motion.y
scoreboard players operation @s gray.preMotion.z = @s gray.Motion.z


execute on passengers run tag @s remove gray.passenger