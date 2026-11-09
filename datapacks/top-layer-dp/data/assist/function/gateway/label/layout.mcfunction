#> assist:gateway/label/layout


scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
execute positioned ^1 ^-1 ^-3 align xyz positioned ~0.5 ~ ~0.5 summon minecraft:item_display run function assist:gateway/label/departure with storage assist:gateway args
execute positioned ^0 ^-1 ^-3 align xyz positioned ~0.5 ~ ~0.5 summon minecraft:item_display run function assist:gateway/label/connection
execute positioned ^-1 ^-1 ^-3 align xyz positioned ~0.5 ~ ~0.5 summon minecraft:item_display run function assist:gateway/label/destination
execute positioned ^-3 ^-1 ^-1 align xyz positioned ~0.5 ~ ~0.5 rotated ~-90 ~ summon minecraft:item_display run function assist:gateway/label/departure with storage assist:gateway args
execute positioned ^-3 ^-1 ^0 align xyz positioned ~0.5 ~ ~0.5 rotated ~-90 ~ summon minecraft:item_display run function assist:gateway/label/connection
execute positioned ^-3 ^-1 ^1 align xyz positioned ~0.5 ~ ~0.5 rotated ~-90 ~ summon minecraft:item_display run function assist:gateway/label/destination
execute positioned ^-1 ^-1 ^3 align xyz positioned ~0.5 ~ ~0.5 rotated ~180 ~ summon minecraft:item_display run function assist:gateway/label/departure with storage assist:gateway args
execute positioned ^0 ^-1 ^3 align xyz positioned ~0.5 ~ ~0.5 rotated ~180 ~ summon minecraft:item_display run function assist:gateway/label/connection
execute positioned ^1 ^-1 ^3 align xyz positioned ~0.5 ~ ~0.5 rotated ~180 ~ summon minecraft:item_display run function assist:gateway/label/destination
execute positioned ^3 ^-1 ^1 align xyz positioned ~0.5 ~ ~0.5 rotated ~90 ~ summon minecraft:item_display run function assist:gateway/label/departure with storage assist:gateway args
execute positioned ^3 ^-1 ^0 align xyz positioned ~0.5 ~ ~0.5 rotated ~90 ~ summon minecraft:item_display run function assist:gateway/label/connection
execute positioned ^3 ^-1 ^-1 align xyz positioned ~0.5 ~ ~0.5 rotated ~90 ~ summon minecraft:item_display run function assist:gateway/label/destination
