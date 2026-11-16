#> assist:gateway/core/download

$data modify entity @s data.dest set from storage assist:gateway data[{id:$(index)}].pos
$scoreboard players set @s assist.gateway.dest_id $(index)
$execute as @e[type=minecraft:item_display,distance=0..5,tag=assist.gateway.dest] if score @s assist.gateway.id = $this assist.gateway.id run item modify entity @s contents {function:"minecraft:set_item",item:"minecraft:$(color)_stained_glass_pane"}
