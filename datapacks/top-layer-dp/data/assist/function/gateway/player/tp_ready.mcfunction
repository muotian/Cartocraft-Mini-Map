#> assist:gateway/player/tp_ready

scoreboard players operation @s assist.gateway.dx = $dx assist.gateway
scoreboard players operation @s assist.gateway.dy = $dy assist.gateway
scoreboard players operation @s assist.gateway.dz = $dz assist.gateway

scoreboard players set @s assist.gateway.timer 41
scoreboard players operation @s assist.gateway.id = $this assist.gateway.id
scoreboard players operation @s assist.gateway.dest_id = $this assist.gateway.dest_id
