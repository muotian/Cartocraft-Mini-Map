execute as @e[tag=aj.archdemon.root] at @s run function ordered_splinter:boss/archdemon/tick

# 傳送按鈕
execute as @e[tag=wool_purple.room_button_display] at @s run rotate @s ~5 ~
execute as @e[tag=wool_purple.room_button_display] at @s run particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.502,0.000,0.000],scale:1} ^ ^ ^-0.75 0 0 0 0 1
execute as @e[tag=wool_purple.room_button_display] at @s run particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.502,0.000,0.000],scale:1} ^ ^ ^1 0 0 0 0 1
execute as @e[tag=wool_purple.room_button] at @s if data entity @s interaction run function ordered_splinter:boss/archdemon/room/transmit
execute as @e[tag=wool_purple.room_button] run data remove entity @s interaction
execute as a11-0-0-0-4 at @s if entity @p[distance=..10] unless entity @e[tag=wool_purple.room_button] run function ordered_splinter:boss/archdemon/room/button
execute as a11-0-0-0-4 at @s unless entity @p[distance=..10] if entity @e[tag=wool_purple.room_button] run function ordered_splinter:boss/archdemon/room/kill

# 頭目場地
execute as a11-1-2-3-4 at @s positioned ~-1 ~ ~-1 if entity @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] run function ordered_splinter:boss/archdemon/room/player_convert
execute as @a[tag=wool_purple.in_boss_room] at a11-1-2-3-4 positioned ~-1 ~ ~-1 unless entity @s[dx=-19,dy=14,dz=-27] run function ordered_splinter:boss/archdemon/room/leave
execute as a11-1-2-3-4 at @s positioned ~-1 ~ ~-1 unless entity @a[dx=-19,dy=14,dz=-27] if entity a11-0-0-0-1 run function ordered_splinter:boss/archdemon/kill

# 傳送門
execute as a11-0-0-0-6 at @s if entity @s[tag=wool_purple.portal] positioned ~ ~-1 ~ as @a[distance=..0.25] at @s run function ordered_splinter:boss/archdemon/room/back
execute as a11-0-0-0-6 at @s if entity @s[tag=wool_purple.portal] run function ordered_splinter:particle/portal

# 冰塊
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_id] at @s if items entity @s weapon.offhand *[custom_data~{frozen_effect: 1b}] unless score @s wool_purple.mob.id matches 1.. run function ordered_splinter:boss/archdemon/animation/ice_display
execute as @e[tag=wool_purple.ice_display] at @s run function ordered_splinter:boss/archdemon/animation/ice_binding
execute as @e[tag=wool_purple.ice_less] run scoreboard players add @s wool_purple.ice_remove 1
execute as @e[tag=wool_purple.ice_less] if score @s wool_purple.ice_remove matches 573 at @s run data merge entity @n[tag=wool_purple.ice_in] {start_interpolation:10,interpolation_duration:20,transformation:[0.1f,0f,0f,0f,0f,0.1f,0f,0f,0f,0f,0.1f,0f,0f,0f,0f,1f]}
execute as @e[tag=wool_purple.ice_less] if score @s wool_purple.ice_remove matches 600 at @s run function ordered_splinter:boss/archdemon/animation/ice_thaw
execute as @e[tag=wool_purple.ice_less] at @s positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,type=!#minecraft:no_hp,tag=!wool_purple.boss_mainbody] run function ordered_splinter:boss/archdemon/animation/ice_damage
execute as @a[tag=wool_purple.ice_target] run title @s times 0 10 0
execute as @a[tag=wool_purple.ice_target] run title @s title ""
execute as @a[tag=wool_purple.ice_target] run title @s subtitle {translate:ice_remove,color:"aqua"}
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_remove_cd] if predicate ordered_splinter:is_space run scoreboard players remove @s wool_purple.ice_remove 1
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_remove_cd] at @s if score @s wool_purple.ice_remove matches 1.. if predicate ordered_splinter:is_space run playsound minecraft:block.glass.break player @a ~ ~ ~ 2 2
execute as @a[tag=wool_purple.ice_target,tag=!wool_purple.ice_remove_cd] if predicate ordered_splinter:is_space run tag @s add wool_purple.ice_remove_cd
execute as @a[tag=wool_purple.ice_remove_cd] run scoreboard players add @s wool_purple.ice_remove_cd 1
execute as @a[tag=wool_purple.ice_remove_cd] if score @s wool_purple.ice_remove_cd matches 5 run function ordered_splinter:boss/archdemon/animation/ice_remove_cd
execute as @a[tag=wool_purple.ice_target] at @s if score @s wool_purple.ice_remove matches 0 run function ordered_splinter:boss/archdemon/animation/ice_danny
execute as @e[tag=wool_purple.ice_less] at @s if block ~ ~-0.15 ~ #ordered_splinter:transparent unless predicate ordered_splinter:is_ride_motion run tp @s ~ ~-0.1 ~
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{frozen_effect: 1b}] run function ordered_splinter:boss/archdemon/animation/ice_print
execute as @a at @s if items entity @s player.cursor *[custom_data~{frozen_effect: 1b}] run function ordered_splinter:boss/archdemon/animation/ice_moa
execute as @a at @s if items entity @s inventory.* *[custom_data~{frozen_effect: 1b}] run function ordered_splinter:boss/archdemon/animation/ice_jthsu
execute as @a at @s if items entity @s hotbar.* *[custom_data~{frozen_effect: 1b}] run function ordered_splinter:boss/archdemon/animation/ice_jthsu
execute as @a at @s if items entity @s player.crafting.* *[custom_data~{frozen_effect: 1b}] run function ordered_splinter:boss/archdemon/animation/ice_jthsu