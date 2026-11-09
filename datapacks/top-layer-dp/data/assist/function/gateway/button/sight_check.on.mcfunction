#> assist:gateway/button/sight_check.on

data merge entity @s {response:true}

execute as @s[tag=assist.gateway.pedestle] run team join assist.gateway.aqua @n[type=minecraft:item,distance=0..0.5,tag=assist.gateway.pedestle]
