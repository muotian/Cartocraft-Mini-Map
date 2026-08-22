#
execute if entity @s[tag=chest] run setblock ~ ~ ~ pink_shulker_box
execute if entity @s[tag=am] run setblock ~ ~ ~ amethyst_block
execute if entity @s[tag=cob] run setblock ~ ~ ~ crying_obsidian
execute if entity @s[tag=ob] run setblock ~ ~ ~ obsidian
execute if entity @s[tag=pg] run setblock ~ ~ ~ pink_stained_glass
execute if entity @s[tag=mg] run setblock ~ ~ ~ magenta_stained_glass
execute if entity @s[tag=gp] run setblock ~ ~ ~ glass_pane
execute if entity @s[tag=pgp] run setblock ~ ~ ~ pink_stained_glass_pane

kill @s

execute if entity @s[tag=chest] run function pink:npc/room/chest

particle dust{color:[0.878,0.478,1.000],scale:1.5} ~ ~ ~ .3 .3 .3 0 6 normal
particle dust{color:[0.051,0.875,1.000],scale:1.5} ~ ~ ~ .3 .3 .3 0 6 normal

#



