#> assist:gateway/player/tp_timer

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
scoreboard players set $in_range assist.gateway 0
execute as @e[type=minecraft:interaction,distance=0..3,tag=assist.gateway.core] if score @s assist.gateway.id = $this assist.gateway.id run scoreboard players set $in_range assist.gateway 1
execute if score $in_range assist.gateway matches 0 run return run function assist:gateway/player/tp_cancel

execute as @s[scores={assist.gateway.timer=41}] run effect give @s minecraft:darkness 4 0 true
execute as @s[scores={assist.gateway.timer=21}] run effect give @s minecraft:blindness 3 0 true
execute as @s[scores={assist.gateway.timer=1}] run function assist:gateway/player/tp

scoreboard players remove @s assist.gateway.timer 1
