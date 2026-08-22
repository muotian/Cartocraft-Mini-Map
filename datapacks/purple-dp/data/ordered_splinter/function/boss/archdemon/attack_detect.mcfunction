execute as a11-0-0-0-1 on target run tag @s add wool_purple.target
execute if entity @e[tag=wool_purple.target,distance=1..15,limit=1] if predicate ordered_splinter:1percentage run function ordered_splinter:boss/archdemon/skill/hellfire
execute if entity @e[tag=wool_purple.target,distance=..2,limit=1] run function ordered_splinter:boss/archdemon/skill/attack
execute if entity @e[tag=wool_purple.target,distance=10..,limit=1] if predicate ordered_splinter:10percentage run function ordered_splinter:boss/archdemon/skill/jump
execute if entity @e[tag=wool_purple.target,distance=2..4,limit=1] if predicate ordered_splinter:10percentage run function ordered_splinter:boss/archdemon/skill/sprint
execute if entity @e[tag=wool_purple.target,distance=7..10,limit=1] if predicate ordered_splinter:10percentage run function ordered_splinter:boss/archdemon/skill/ice_chicken
execute as a11-0-0-0-1 on target run tag @s remove wool_purple.target