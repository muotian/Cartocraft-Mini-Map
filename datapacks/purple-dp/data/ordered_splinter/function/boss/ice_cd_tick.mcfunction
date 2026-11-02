execute as @a[tag=wool_purple.ice_remove_cd] run scoreboard players add @s wool_purple.ice_remove_cd 1
execute as @a[tag=wool_purple.ice_remove_cd] if score @s wool_purple.ice_remove_cd matches 5 run function ordered_splinter:boss/archdemon/animation/ice_remove_cd
