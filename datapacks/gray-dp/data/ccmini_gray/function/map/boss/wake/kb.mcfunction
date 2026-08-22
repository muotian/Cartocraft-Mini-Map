#擊退


#pm = pos marker
execute store result score $pm.x gray.Pos run data get entity @e[type=marker,tag=gray.boss.wake.kbPos,limit=1] Pos[0] 2000
execute store result score $pm.y gray.Pos run data get entity @e[type=marker,tag=gray.boss.wake.kbPos,limit=1] Pos[1] 2000
execute store result score $pm.z gray.Pos run data get entity @e[type=marker,tag=gray.boss.wake.kbPos,limit=1] Pos[2] 2000

#pp = pos player
execute store result score $pp.x gray.Pos run data get entity @s Pos[0] 2000
execute store result score $pp.y gray.Pos run data get entity @s Pos[1] 2000
execute store result score $pp.z gray.Pos run data get entity @s Pos[2] 2000

scoreboard players operation $pm.x gray.Pos -= $pp.x gray.Pos
scoreboard players operation $pm.y gray.Pos -= $pp.y gray.Pos
scoreboard players operation $pm.z gray.Pos -= $pp.z gray.Pos

scoreboard players operation $x player_motion.api.launch = $pm.x gray.Pos
scoreboard players operation $y player_motion.api.launch = $pm.y gray.Pos
scoreboard players operation $z player_motion.api.launch = $pm.z gray.Pos



function player_motion:api/launch_xyz



#擊退位子marker
#summon marker ~ ~ ~ {Tags:[gray.boss.wake.kbPos]}