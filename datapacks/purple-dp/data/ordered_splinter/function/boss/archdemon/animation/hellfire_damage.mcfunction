execute as @p[dx=0] run damage @s 15 mob_attack by a11-0-0-0-1
execute as @p[dx=0,tag=!wool_purple.hellfire_target] run tag @s add wool_purple.fire_target
execute as @p[dx=0,tag=!wool_purple.hellfire_target] run function ordered_splinter:boss/archdemon/animation/fire_summon {fire_level:5}
execute as @p[dx=0,tag=!wool_purple.hellfire_target,tag=wool_purple.ice_target] run function ordered_splinter:boss/archdemon/animation/ice_danny
execute as @p[dx=0,tag=!wool_purple.hellfire_target] run tag @s add wool_purple.hellfire_target