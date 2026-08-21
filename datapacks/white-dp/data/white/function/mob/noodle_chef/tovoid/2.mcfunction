
tp @s ~ ~ ~

execute at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:-63}}}}} run return run function white:mob/noodle_chef/tovoid/3
execute if block ~ ~-1 ~ #white:transparent positioned ~ ~-1 ~ run return run function white:mob/noodle_chef/tovoid/2

kill @s