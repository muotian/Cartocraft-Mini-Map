#> assist:jump_pad/cancel_check
# scheduled
execute if entity @a[tag=assist.jump_pad.in_range] run schedule function assist:jump_pad/cancel_check 1t
execute as @a[tag=assist.jump_pad.launch_ready,tag=!assist.jump_pad.in_range] run function assist:jump_pad/cancel
tag @a remove assist.jump_pad.in_range
