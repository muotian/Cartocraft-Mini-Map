# 執行者、執行位置是玩家

execute unless score @s wool_purple.carpet_cd matches 0 run title @s actionbar [{"translate":"item.aspectslayer_longsword.lore.16","color":"white"},{"translate":"item.aspectslayer_longsword.lore.17","color":"#a31212"},{"translate":"item.aspectslayer_longsword.lore.18","color":"white"},{"translate":"ability_cd.1","color":"white"},{"score":{"name":"@s","objective":"wool_purple.carpet.sec"}},{"translate":"ability_cd.2","color":"white"}]
execute unless score @s wool_purple.carpet_cd matches 0 run return fail

execute at @s run summon marker ~ ~ ~ {Tags:["wool_purple.carpet"]}
execute store result entity @e[type=marker,tag=wool_purple.carpet,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1

execute at @e[tag=wool_purple.carpet] run summon marker ^-0.5 ^ ^0.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^-0.5 ^ ^1.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^-0.5 ^ ^2.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^-0.5 ^ ^3.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^-0.5 ^ ^4.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^0.5 ^ ^0.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^0.5 ^ ^1.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^0.5 ^ ^2.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^0.5 ^ ^3.5 {Tags:["wool_purple.carpet_damage"]}
execute at @e[tag=wool_purple.carpet] run summon marker ^0.5 ^ ^4.5 {Tags:["wool_purple.carpet_damage"]}

execute as @s run scoreboard players set @s wool_purple.carpet_cd 600