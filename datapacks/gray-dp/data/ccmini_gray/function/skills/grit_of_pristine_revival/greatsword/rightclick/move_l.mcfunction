execute rotated ~270 0 positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:[gray.PosMarker]}
execute rotated ~270 0 positioned ^ ^ ^3 facing entity @s feet rotated ~180 ~ run function animated_java:gray_speed_lines/summon {args:{animation:"run",start_animation:true}}

#pm = pos marker
execute store result score $pm.x gray.Pos run data get entity @e[type=marker,tag=gray.PosMarker,limit=1] Pos[0] 1000
execute store result score $pm.z gray.Pos run data get entity @e[type=marker,tag=gray.PosMarker,limit=1] Pos[2] 1000
#pp = pos player
execute store result score $pp.x gray.Pos run data get entity @s Pos[0] 1000
execute store result score $pp.z gray.Pos run data get entity @s Pos[2] 1000
scoreboard players operation $pm.x gray.Pos -= $pp.x gray.Pos
scoreboard players operation $pm.z gray.Pos -= $pp.z gray.Pos

scoreboard players operation $x player_motion.api.launch = $pm.x gray.Pos
scoreboard players operation $z player_motion.api.launch = $pm.z gray.Pos


kill @e[type=marker,tag=gray.PosMarker]