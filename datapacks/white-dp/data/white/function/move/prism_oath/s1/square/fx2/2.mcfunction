
scoreboard players remove #range white.main 10

particle electric_spark ^ ^1.0 ^1.0 0 0 0 1000000 1 force
particle electric_spark ^ ^1.0 ^-1.0 0 0 0 1000000 1 force
particle electric_spark ^ ^-1.0 ^1.0 0 0 0 1000000 1 force
particle electric_spark ^ ^-1.0 ^-1.0 0 0 0 1000000 1 force

execute if score #range white.main matches ..0 run return fail
execute positioned ^-0.5 ^ ^ rotated ~ ~-3 run function white:move/prism_oath/s1/square/fx2/2