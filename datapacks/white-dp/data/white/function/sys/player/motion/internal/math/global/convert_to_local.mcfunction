scoreboard players operation #_x white.motion.internal.dummy = #x white.motion.internal.dummy
scoreboard players operation #_y white.motion.internal.dummy = #y white.motion.internal.dummy
scoreboard players operation #_z white.motion.internal.dummy = #z white.motion.internal.dummy

execute store result score #x white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_i[0] 100000
execute store result score #vec_i.z white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_i[2] 100000

execute store result score #y white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_j[0] 100000
execute store result score #vec_j.y white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_j[1] 100000
execute store result score #vec_j.z white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_j[2] 100000

execute store result score #z white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_k[0] 100000
execute store result score #vec_k.y white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_k[1] 100000
execute store result score #vec_k.z white.motion.internal.dummy run data get storage white:sys/player/motion/internal/temp vec_k[2] 100000

scoreboard players operation #x white.motion.internal.dummy *= #_x white.motion.internal.dummy
scoreboard players operation #vec_i.z white.motion.internal.dummy *= #_z white.motion.internal.dummy

scoreboard players operation #y white.motion.internal.dummy *= #_x white.motion.internal.dummy
scoreboard players operation #vec_j.y white.motion.internal.dummy *= #_y white.motion.internal.dummy
scoreboard players operation #vec_j.z white.motion.internal.dummy *= #_z white.motion.internal.dummy

scoreboard players operation #z white.motion.internal.dummy *= #_x white.motion.internal.dummy
scoreboard players operation #vec_k.y white.motion.internal.dummy *= #_y white.motion.internal.dummy
scoreboard players operation #vec_k.z white.motion.internal.dummy *= #_z white.motion.internal.dummy

scoreboard players operation #x white.motion.internal.dummy += #vec_i.z white.motion.internal.dummy

scoreboard players operation #y white.motion.internal.dummy += #vec_j.y white.motion.internal.dummy
scoreboard players operation #y white.motion.internal.dummy += #vec_j.z white.motion.internal.dummy

scoreboard players operation #z white.motion.internal.dummy += #vec_k.y white.motion.internal.dummy
scoreboard players operation #z white.motion.internal.dummy += #vec_k.z white.motion.internal.dummy

scoreboard players operation #x white.motion.internal.dummy /= #constant.100000 white.motion.internal.const
scoreboard players operation #y white.motion.internal.dummy /= #constant.100000 white.motion.internal.const
scoreboard players operation #z white.motion.internal.dummy /= #constant.100000 white.motion.internal.const