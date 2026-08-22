tp @s ~ 320 ~

execute store result score @s wool_purple.gametype run data get entity @s playerGameType
gamemode creative

execute at a11-0-0-0-1 positioned ~ 325 ~ anchored feet facing entity @s feet summon end_crystal run damage @s 1
execute at a11-0-0-0-1 positioned ~ 325 ~ anchored feet facing entity @s feet summon end_crystal run damage @s 1

gamemode survival @s[scores={wool_purple.gametype=0}]
gamemode creative @s[scores={wool_purple.gametype=1}]
gamemode adventure @s[scores={wool_purple.gametype=2}]
gamemode spectator @s[scores={wool_purple.gametype=3}]
scoreboard players reset @s wool_purple.gametype

tp @s ~ ~ ~