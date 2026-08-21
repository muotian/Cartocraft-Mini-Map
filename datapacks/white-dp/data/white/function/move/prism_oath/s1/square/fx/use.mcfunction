
rotate @s ~ ~6
execute if entity @s[x_rotation=90] run rotate @s ~ -90
execute if entity @s[tag=white.move.prism_oath.s1.square.1] run return run function white:move/prism_oath/s1/square/fx2/use

scoreboard players set #range white.main 150
function white:move/prism_oath/s1/square/fx/2

particle end_rod ^ ^-2.0 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-1.5 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-1.5 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-1.0 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-1.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-0.5 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-0.5 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^0.0 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^0.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^0.5 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^0.5 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^1.0 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^1.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^1.5 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^1.5 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^-1.5 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^-1.5 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^-1.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^-1.0 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^-0.5 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^-0.5 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^0.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^0.0 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^0.5 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^0.5 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^1.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^1.0 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^1.5 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^1.5 0 0 0 1000000 1 force
particle end_rod ^ ^-2.0 ^2.0 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^2.0 0 0 0 1000000 1 force