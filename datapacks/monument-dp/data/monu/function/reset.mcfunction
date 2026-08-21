execute as @e[type=block_display,tag=star_white] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_orange] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_magenta] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_light_blue] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_yellow] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_lime] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_pink] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_gray] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_light_gray] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_cyan] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_purple] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_blue] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_brown] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_green] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_red] run data merge entity @s {brightness:{block:0,sky:0}}
execute as @e[type=block_display,tag=star_black] run data merge entity @s {brightness:{block:0,sky:0}}

tag @a remove lit_white
tag @a remove lit_orange
tag @a remove lit_magenta
tag @a remove lit_light_blue
tag @a remove lit_yellow
tag @a remove lit_lime
tag @a remove lit_pink
tag @a remove lit_gray
tag @a remove lit_light_gray
tag @a remove lit_cyan
tag @a remove lit_purple
tag @a remove lit_blue
tag @a remove lit_brown
tag @a remove lit_green
tag @a remove lit_red
tag @a remove lit_black

execute at @e[type=marker,tag=monu_white,limit=1] run setblock ~ ~ ~ minecraft:white_stained_glass
execute at @e[type=marker,tag=monu_orange,limit=1] run setblock ~ ~ ~ minecraft:orange_stained_glass
execute at @e[type=marker,tag=monu_magenta,limit=1] run setblock ~ ~ ~ minecraft:magenta_stained_glass
execute at @e[type=marker,tag=monu_light_blue,limit=1] run setblock ~ ~ ~ minecraft:light_blue_stained_glass
execute at @e[type=marker,tag=monu_yellow,limit=1] run setblock ~ ~ ~ minecraft:yellow_stained_glass
execute at @e[type=marker,tag=monu_lime,limit=1] run setblock ~ ~ ~ minecraft:lime_stained_glass
execute at @e[type=marker,tag=monu_pink,limit=1] run setblock ~ ~ ~ minecraft:pink_stained_glass
execute at @e[type=marker,tag=monu_gray,limit=1] run setblock ~ ~ ~ minecraft:gray_stained_glass
execute at @e[type=marker,tag=monu_light_gray,limit=1] run setblock ~ ~ ~ minecraft:light_gray_stained_glass
execute at @e[type=marker,tag=monu_cyan,limit=1] run setblock ~ ~ ~ minecraft:cyan_stained_glass
execute at @e[type=marker,tag=monu_purple,limit=1] run setblock ~ ~ ~ minecraft:purple_stained_glass
execute at @e[type=marker,tag=monu_blue,limit=1] run setblock ~ ~ ~ minecraft:blue_stained_glass
execute at @e[type=marker,tag=monu_brown,limit=1] run setblock ~ ~ ~ minecraft:brown_stained_glass
execute at @e[type=marker,tag=monu_green,limit=1] run setblock ~ ~ ~ minecraft:green_stained_glass
execute at @e[type=marker,tag=monu_red,limit=1] run setblock ~ ~ ~ minecraft:red_stained_glass
execute at @e[type=marker,tag=monu_black,limit=1] run setblock ~ ~ ~ minecraft:black_stained_glass

kill @e[tag=energy_bolt,type=item_display]
kill @e[tag=delay_timer,type=marker]

schedule clear monu:wool/complete_firework_scheduled
schedule clear monu:wool/complete_firework

scoreboard players set @a monu_return 0
scoreboard players set $global monu_complete_step 0
scoreboard players set $global monu_complete_flag 0

data remove storage monu:complete fw
data remove storage monu:complete finale
