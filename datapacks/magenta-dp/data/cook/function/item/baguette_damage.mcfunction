#

execute at @s run summon marker ^ ^ ^1.5 {Tags:["MagentaBaguetteDmg"]}

execute as @e[tag=MagentaBaguetteDmg,type=marker] at @s if block ~ ~-1 ~ air run tp @s ~ ~-0.5 ~

$execute as @e[tag=MagentaBaguetteDmg,type=marker] at @s run execute as @e[distance=..3,type=!player] run damage @s $(dmg) player_attack

kill @e[tag=MagentaBaguetteDmg,type=marker]


playsound entity.player.attack.sweep player @a[distance=..5] ~ ~ ~ 1 0.4

