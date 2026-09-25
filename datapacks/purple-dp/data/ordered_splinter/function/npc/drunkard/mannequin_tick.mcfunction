# @s = mannequin (tag: wool_purple.npc.drunkard_mannequin)
function ordered_splinter:npc/drunkard/tick
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wool_purple.npc.drunkard.dialog] ^ ^-0.4 ^0.75
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] ^ ^-0.6 ^0.75
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] ^ ^-0.8 ^0.75
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=interaction] ^ ^-0.625 ^-0.25
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=interaction] ^ ^-0.825 ^-0.25
tp @e[tag=wool_purple.npc.drunkard.dialog.condition] ~ ~2.25 ~
