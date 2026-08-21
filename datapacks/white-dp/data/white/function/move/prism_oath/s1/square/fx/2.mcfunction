
scoreboard players remove #range white.main 10

particle end_rod ^ ^-2.0 ^ 0 0 0 1000000 1 force
particle end_rod ^ ^2.0 ^ 0 0 0 1000000 1 force
particle end_rod ^ ^ ^-2.0 0 0 0 1000000 1 force
particle end_rod ^ ^ ^2.0 0 0 0 1000000 1 force

execute if score #range white.main matches ..0 run return fail
execute if entity @s[x_rotation=90] run rotate @s ~ -90
execute positioned ^0.5 ^ ^ rotated ~ ~-3 run function white:move/prism_oath/s1/square/fx/2