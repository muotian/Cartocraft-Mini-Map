$execute positioned ^$(x) ^$(y) ^ run function white:sys/player/motion/internal/math/teleport_marker
execute store result score #x white.motion.internal.dummy run data get entity @s Pos[0]
execute store result score #y white.motion.internal.dummy run data get entity @s Pos[2]
teleport @s 0.0 0.0 0.0 0.0 0.0