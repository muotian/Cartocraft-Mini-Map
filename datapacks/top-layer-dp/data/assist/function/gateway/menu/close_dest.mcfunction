#> assist:gateway/menu/close_dest

scoreboard players set @s assist.gateway.active 4
scoreboard players set @s assist.gateway.timer 32
data merge entity @s {response:0b}

function assist:gateway/core/download with storage assist:gateway args

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
#execute as @e[type=minecraft:item,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run kill @s
execute as @e[type=minecraft:interaction,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run kill @s
