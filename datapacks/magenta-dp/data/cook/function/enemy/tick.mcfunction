#

effect give @e[tag=MagentaCabbage,type=magma_cube] invisibility infinite 0 true
execute as @e[tag=MagentaCabbage,type=item_display] unless predicate cook:cabbage run kill @s

effect give @e[tag=MagentaPumpkin,type=zombie] invisibility infinite 0 true
