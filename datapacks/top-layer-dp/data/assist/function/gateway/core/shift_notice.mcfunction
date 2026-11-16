#> assist:gateway/core/shift_notice

execute store result score $count assist.gateway run data get storage assist:gateway data
execute unless score $count assist.gateway matches 3.. run return 0

scoreboard players set $shift_notice assist.gateway 1
execute positioned ^ ^ ^-0.501 summon minecraft:text_display run function assist:gateway/core/shift_notice.display
