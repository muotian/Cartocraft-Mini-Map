#> assist:gateway/button/pressed

execute as @s[tag=assist.gateway.core,tag=!assist.gateway.init] run return 0
execute as @s[scores={assist.gateway.looked_at=0}] run return 0
execute as @a[tag=assist.gateway.pressor,scores={assist.gateway.timer=1..}] run return 0

execute as @a[tag=assist.gateway.pressor] store result score $sneaking assist.gateway if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}}

execute as @s[tag=assist.gateway.core] unless score @s assist.gateway.active matches 1.. run return run function assist:gateway/core/activate
execute as @s[tag=assist.gateway.core,scores={assist.gateway.active=1}] if score $sneaking assist.gateway matches 0 run return run function assist:gateway/core/travel
execute as @s[tag=assist.gateway.core,scores={assist.gateway.active=1}] if score $sneaking assist.gateway matches 1 run return run function assist:gateway/menu/open
execute as @s[tag=assist.gateway.core,scores={assist.gateway.active=3}] run return run function assist:gateway/menu/close

execute as @s[tag=assist.gateway.pedestle] run function assist:gateway/menu/selected
