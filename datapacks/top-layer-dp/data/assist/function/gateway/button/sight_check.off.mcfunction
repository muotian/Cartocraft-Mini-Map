#> assist:gateway/button/sight_check.off

data merge entity @s {response:false}

execute as @s[tag=assist.gateway.pedestle] run team leave @n[type=minecraft:item,distance=0..0.5,tag=assist.gateway.pedestle]
