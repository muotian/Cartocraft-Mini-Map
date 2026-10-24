#> assist:jump_pad/location_check
# @s = player
# position = marker(jump_pad)

$execute as @s[tag=!assist.jump_pad.safe_fall] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{max:4.0},y:{max:$(height)}},flags:{is_on_ground:false}}} run function assist:jump_pad/safe_fall
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{max:2.0},y:{max:1.0}}}} at @s unless block ~ ~ ~ #minecraft:climbable run tag @s add assist.jump_pad.in_range
execute as @s[tag=assist.jump_pad.in_range,tag=!assist.jump_pad.launch_ready] run function assist:jump_pad/ready
