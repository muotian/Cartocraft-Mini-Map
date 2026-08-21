$execute facing ~$(ix) ~$(jx) ~$(kx) positioned ^ ^ ^$(x) facing ~ ~$(jy) ~$(ky) positioned ^ ^ ^$(y) facing ~$(iz) ~$(jz) ~$(kz) run teleport @s ^ ^ ^$(z)

execute store result score #x white.motion.internal.dummy run data get entity @s Pos[0]
execute store result score #y white.motion.internal.dummy run data get entity @s Pos[1]
execute store result score #z white.motion.internal.dummy run data get entity @s Pos[2]

teleport @s 0.0 0.0 0.0 0.0 0.0