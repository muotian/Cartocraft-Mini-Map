
tag @s add white.atker
execute as @e[predicate=white:mob/victim,distance=..5] run tag @s add white.victim
execute if entity @e[tag=white.victim,distance=..5,limit=1] run function white:move/prism_oath/s2/brust/hit
tag @s remove white.atker

# fx
execute rotated 0 0 run function white:move/prism_oath/s2/brust/2b
execute rotated 90 0 run function white:move/prism_oath/s2/brust/2b
execute rotated 180 0 run function white:move/prism_oath/s2/brust/2b
execute rotated 270 0 run function white:move/prism_oath/s2/brust/2b
execute rotated 0 90 run function white:move/prism_oath/s2/brust/2b
execute rotated 0 -90 run function white:move/prism_oath/s2/brust/2b
execute as @a[distance=..64] facing entity @s feet run function white:move/prism_oath/s2/brust/2c

playsound minecraft:entity.warden.sonic_boom master @a[distance=..48] ~ ~ ~ 0.2 1 0.2
playsound minecraft:block.end_gateway.spawn master @a[distance=..48] ~ ~ ~ 0.5 1.5 0.5
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..48] ~ ~ ~ 0.75 0.5 0.75

kill @s[type=item]