#> assist:gateway/player/dest_check

scoreboard players operation $dep assist.gateway.id = @s assist.gateway.id
scoreboard players operation $dest assist.gateway.id = @s assist.gateway.dest_id
execute as @e[type=minecraft:interaction,distance=0..50,tag=assist.gateway.core] if score @s assist.gateway.id = $dest assist.gateway.id at @s if loaded ~-3 ~ ~-3 if loaded ~-3 ~ ~3 if loaded ~3 ~ ~-3 if loaded ~3 ~ ~3 run return run function assist:gateway/core/arraived
return fail
