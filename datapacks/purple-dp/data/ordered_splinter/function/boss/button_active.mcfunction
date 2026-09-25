execute unless entity @e[tag=wool_purple.room_button] run function ordered_splinter:boss/archdemon/room/button
execute as @e[tag=wool_purple.room_button_display] at @s run rotate @s ~5 ~
execute as @e[tag=wool_purple.room_button_display] at @s run particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.502,0.000,0.000],scale:1} ^ ^ ^-0.75 0 0 0 0 1
execute as @e[tag=wool_purple.room_button_display] at @s run particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.502,0.000,0.000],scale:1} ^ ^ ^1 0 0 0 0 1
execute as @e[tag=wool_purple.room_button] at @s if data entity @s interaction run function ordered_splinter:boss/archdemon/room/transmit
execute as @e[tag=wool_purple.room_button] run data remove entity @s interaction
