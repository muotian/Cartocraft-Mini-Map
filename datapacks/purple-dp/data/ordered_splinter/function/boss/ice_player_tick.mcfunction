execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_id] at @s if items entity @s weapon.offhand *[custom_data~{frozen_effect: 1b}] unless score @s wool_purple.mob.id matches 1.. run function ordered_splinter:boss/archdemon/animation/ice_display
execute as @a[tag=wool_purple.ice_target] run title @s times 0 10 0
execute as @a[tag=wool_purple.ice_target] run title @s title ""
execute as @a[tag=wool_purple.ice_target] run title @s subtitle {translate:ice_remove,color:"aqua"}
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_remove_cd] if predicate ordered_splinter:is_space run scoreboard players remove @s wool_purple.ice_remove 1
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_remove_cd] at @s if score @s wool_purple.ice_remove matches 1.. if predicate ordered_splinter:is_space run playsound minecraft:block.glass.break player @a ~ ~ ~ 2 2
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_remove_cd] if predicate ordered_splinter:is_space run tag @s add wool_purple.ice_remove_cd
execute as @a[tag=wool_purple.ice_target] at @s if score @s wool_purple.ice_remove matches 0 run function ordered_splinter:boss/archdemon/animation/ice_danny
