#> assist:gateway/core/tick

execute as @s[scores={assist.gateway.timer=1..}] run function assist:gateway/core/timer

execute as @s[scores={assist.gateway.active=3}] unless entity @a[distance=0..5] run function assist:gateway/menu/close

particle minecraft:enchant ~ ~-1 ~ 1.1 0 1.1 0 10

execute as @s[scores={assist.gateway.active=1..}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:50}} run playsound block.beacon.ambient block @a ~ ~0.5 ~ 0.9 1
