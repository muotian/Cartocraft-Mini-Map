#偵測是否對生物作用

#開發用，顯示raycast，正常不顯示
particle crit ~ ~ ~ 0 0 0 0 1 normal @a[tag=gray.development]

#確認有沒有碰到目標生物，如果有給他加上tag並結束遞迴
tag @e[tag=gray.sandstorm.target,tag=!gray.sandstorm.target.checked,limit=1,sort=nearest] add gray.sandstorm.target.temp
execute positioned ~-0.05 ~-0.05 ~-0.05 if entity @e[dx=0,dy=0,dz=0,tag=gray.sandstorm.target.temp,limit=1] positioned ~-0.95 ~-0.95 ~-0.95 if entity @e[dx=0,dy=0,dz=0,tag=gray.sandstorm.target.temp,limit=1] run scoreboard players set @s gray.distance 100
execute if score @s gray.distance matches 100 run tag @e[tag=gray.sandstorm.target.temp,limit=1] add gray.sandstorm.target.run
tag @e[tag=gray.sandstorm.target.temp,limit=1] remove gray.sandstorm.target.temp

#跑遞迴用的
scoreboard players add @s gray.distance 1
execute if score @s gray.distance matches ..50 if block ^ ^ ^ #ccmini_gray:transparent if block ^ ^0.1 ^ #ccmini_gray:transparent if block ^ ^-0.1 ^ #ccmini_gray:transparent if block ^0.1 ^ ^ #ccmini_gray:transparent if block ^-0.1 ^ ^ #ccmini_gray:transparent positioned ^ ^ ^0.1 run function ccmini_gray:skills/sandstorm/raycast

#遞迴結束
scoreboard players reset @s gray.distance