#計算Motion 
execute on target run tag @s add gray.dune_recluse.target
#pt = pos target
execute store result score $pt.x gray.Pos run data get entity @a[tag=gray.dune_recluse.target,limit=1] Pos[0] 1000
execute store result score $pt.y gray.Pos run data get entity @a[tag=gray.dune_recluse.target,limit=1] Pos[1] 1000
execute store result score $pt.z gray.Pos run data get entity @a[tag=gray.dune_recluse.target,limit=1] Pos[2] 1000
#pm = pos mob
execute store result score $pm.x gray.Pos run data get entity @s Pos[0] 1000
execute store result score $pm.y gray.Pos run data get entity @s Pos[1] 1000
execute store result score $pm.z gray.Pos run data get entity @s Pos[2] 1000
scoreboard players operation $pt.x gray.Pos -= $pm.x gray.Pos
scoreboard players operation $pt.y gray.Pos -= $pm.y gray.Pos 
scoreboard players operation $pt.z gray.Pos -= $pm.z gray.Pos

tag @a[tag=gray.dune_recluse.target,limit=1] remove gray.dune_recluse.target

function ccmini_gray:mob/desert_ranger/charge/summon