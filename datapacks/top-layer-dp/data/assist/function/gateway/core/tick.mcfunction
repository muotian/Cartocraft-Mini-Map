#> assist:gateway/core/tick

particle minecraft:enchant ~ ~-1 ~ 1.1 0 1.1 0 10

execute unless score @s assist.gateway.id matches 0.. run return run function assist:gateway/reset with entity @s data
execute unless score @s assist.gateway.active matches 1.. run return 0

execute as @s[scores={assist.gateway.timer=1..}] run function assist:gateway/core/timer

execute store success score $this assist.gateway.awake if entity @a[distance=0..5]
execute if score $this assist.gateway.awake matches 1 unless score @s assist.gateway.awake matches 1 run function assist:gateway/core/awaken
execute if score $this assist.gateway.awake matches 0 unless score @s assist.gateway.awake matches 0 run function assist:gateway/core/sleep
scoreboard players operation @s assist.gateway.awake = $this assist.gateway.awake

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:50}} run playsound block.beacon.ambient block @a ~ ~0.5 ~ 0.9 1
