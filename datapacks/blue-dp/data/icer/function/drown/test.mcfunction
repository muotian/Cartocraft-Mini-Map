tp @s @n[tag=icer.tp_drown]
scoreboard players add @s icer.drown 1
kill @s
execute if score @s icer.drown matches 10.. run function icer:drown/add_tag
