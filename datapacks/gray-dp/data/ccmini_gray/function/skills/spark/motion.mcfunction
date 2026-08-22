execute as @s[gamemode=!creative] at @s run item modify entity @s weapon.mainhand ccmini_gray:count
#計算Motiont
summon marker ^ ^ ^18 {Tags:[gray.PosMarker]}
#pm = pos marker
execute store result score $pm.x gray.Pos run data get entity @e[type=marker,tag=gray.PosMarker,limit=1] Pos[0] 1000
execute store result score $pm.y gray.Pos run data get entity @e[type=marker,tag=gray.PosMarker,limit=1] Pos[1] 1000
execute store result score $pm.z gray.Pos run data get entity @e[type=marker,tag=gray.PosMarker,limit=1] Pos[2] 1000
#pp = pos player
execute store result score $pp.x gray.Pos run data get entity @s Pos[0] 1000
execute store result score $pp.y gray.Pos run data get entity @s Pos[1] 1000
execute store result score $pp.z gray.Pos run data get entity @s Pos[2] 1000
scoreboard players operation $pm.x gray.Pos -= $pp.x gray.Pos
scoreboard players operation $pm.y gray.Pos -= $pp.y gray.Pos 
scoreboard players operation $pm.z gray.Pos -= $pp.z gray.Pos

kill @e[tag=gray.PosMarker,limit=1]

function ccmini_gray:skills/spark/shot