## (exe) chef | (pos) player

tag @s add white.move.sovereign_blade.target
data merge entity @s {NoAI:0b,Invulnerable:0b}
execute rotated ~-90 -30 run function white:sys/motion {s:2}

# fx
stopsound @a master white:skidaddle
execute rotated ~ 0 positioned ^-7.5 ^14 ^2 rotated ~-90 ~60 run function white:move/sovereign_blade/blade/use