tp @s ~ 320 ~

execute store result score @s wool_purple.gametype run data get entity @s playerGameType
gamemode creative

$execute positioned ~ 320 ~ anchored eyes positioned ^ ^ ^$(s) summon end_crystal run damage @s 1
$execute positioned ~ 320 ~ anchored eyes positioned ^ ^ ^$(s) summon end_crystal run damage @s 1

gamemode survival @s[scores={wool_purple.gametype=0}]
gamemode creative @s[scores={wool_purple.gametype=1}]
gamemode adventure @s[scores={wool_purple.gametype=2}]
gamemode spectator @s[scores={wool_purple.gametype=3}]
scoreboard players reset @s wool_purple.gametype

tp @s ~ ~ ~

# 來源：紙圓在 SSS 的資料包 >3<