execute as @e[tag=aj.archdemon.root] run function animated_java:archdemon/remove/all
tp a11-0-0-0-1 ~ -300 ~
kill a11-0-0-0-1
execute as @e[tag=wool_purple.sprint_target] run attribute @s jump_strength modifier remove wool_purple.archdemon_sprint
execute as @e[tag=wool_purple.sprint_target] run effect clear @s slowness
tag @e[tag=wool_purple.sprint_target] remove wool_purple.sprint_target
tag @e[tag=wool_purple.collision_target] remove wool_purple.collision_target
kill @e[tag=wool_purple.ice_danny]
kill @e[tag=wool_purple.ice_less]
kill @e[tag=wool_purple.ice_in]
execute as @a[tag=wool_purple.ice_target] run function ordered_splinter:boss/archdemon/animation/ice_danny
execute as @a[tag=wool_purple.ice_target] run tag @s remove wool_purple.ice_target
stopsound @a record wool_purple:archdemon_battle
bossbar set minecraft:wool_purple.boss_hp players