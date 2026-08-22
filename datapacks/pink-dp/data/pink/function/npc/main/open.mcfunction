advancement revoke @s only pink:npc/main_rc
execute if entity @n[tag=pink_npc,tag=pink.open_npc,tag=main] run return fail

#
playsound block.dispenser.fail player @s ~ ~ ~ 1 1

tag @s add pink.open_npc
tag @n[tag=pink_npc,tag=main] add pink.open_npc


# 
execute at @n[tag=pink_npc,tag=main] anchored eyes facing entity @s eyes facing entity @p[tag=pink.open_npc] eyes run function pink:npc/open

# facing
execute as @n[tag=pink_npc,tag=pink.open_npc,tag=main] at @s facing entity @p[tag=pink.open_npc] eyes run tp @s ~ ~ ~ ~ 0