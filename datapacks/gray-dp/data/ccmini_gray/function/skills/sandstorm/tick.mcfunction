#方塊推擠
execute at @s unless block ~ ~ ~ #ccmini_gray:transparent run tp ~ ~0.5 ~
#計時
scoreboard players add @s gray.exist 1
#引響怪物
tag @s add gray.sandstorm
tag @e[distance=..5,type=!armor_stand,type=!player,nbt={DeathTime:0s},tag=!gray.uncontrollable] add gray.sandstorm.target
function ccmini_gray:skills/sandstorm/lock_target
execute as @e[tag=gray.sandstorm.target.run] at @s run function ccmini_gray:skills/sandstorm/motion
scoreboard players reset $ps.x gray.Pos
scoreboard players reset $ps.y gray.Pos
scoreboard players reset $ps.z gray.Pos
scoreboard players reset $pe.x gray.Pos
scoreboard players reset $pe.y gray.Pos
scoreboard players reset $pe.z gray.Pos
execute if score @s gray.exist matches 120.. run effect give @e[distance=..5,tag=gray.sandstorm.target.run,nbt=!{NoAI:1b}] weakness 15 2
execute as @e[tag=gray.sandstorm.target] run function ccmini_gray:skills/sandstorm/remove_temp_tag
tag @s remove gray.sandstorm
#音效
playsound minecraft:block.sand.idle player @a ~ ~ ~ 0.5 1
playsound entity.breeze.land player @a ~ ~ ~ 0.8 1
playsound entity.breeze.slide player @a ~ ~ ~ 0.5 1
#清除
execute if score @s gray.exist matches 120.. run function animated_java:gray_sandstorm/remove/this