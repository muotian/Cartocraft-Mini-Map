$execute positioned ^$(x) ^$(y) ^$(z) run function white:sys/player/motion/internal/math/teleport_marker
data modify storage white:sys/player/motion/internal/temp matrix.x set from entity @s Pos[0]
data modify storage white:sys/player/motion/internal/temp matrix.y set from entity @s Pos[1]
data modify storage white:sys/player/motion/internal/temp matrix.z set from entity @s Pos[2]

execute store result score #x white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp matrix.x
execute store result score #y white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp matrix.y
execute store result score #z white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp matrix.z
teleport @s 0.0 0.0 0.0 0.0 0.0