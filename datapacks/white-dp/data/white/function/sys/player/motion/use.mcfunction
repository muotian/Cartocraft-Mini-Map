
$execute as a1-0-0-0-0 positioned 0.0 0.0 0.0 positioned ^ ^ ^$(s) run tp ~ ~ ~
data modify storage white:temp Motion set from entity a1-0-0-0-0 Pos

execute store result score $x white.motion.api.launch run data get storage white:temp Motion[0] 10000
execute store result score $y white.motion.api.launch run data get storage white:temp Motion[1] 10000
execute store result score $z white.motion.api.launch run data get storage white:temp Motion[2] 10000

# tellraw @a ["x: ",{score:{name:"$x",objective:"white.motion.api.launch"}}," | ","y: ",{score:{name:"$y",objective:"white.motion.api.launch"}}," | ","z: ",{score:{name:"$z",objective:"white.motion.api.launch"}}]
execute at @s run function white:sys/player/motion/api/launch_global_xyz

tp a1-0-0-0-0 0.0 0.0 0.0
data remove storage white:temp Motion