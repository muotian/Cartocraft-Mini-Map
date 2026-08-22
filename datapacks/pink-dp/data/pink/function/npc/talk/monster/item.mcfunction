tp @e[tag=pink_npc,tag=!main,tag=!pink_npc.close] ~ ~-100 ~
kill @e[tag=pink_npc,tag=!main,tag=!pink_npc.close]

#
execute at @n[tag=pink_npc,tag=main] facing entity @p[tag=pink.open_npc] eyes rotated ~ 0 run function pink:npc/talk/monster/summon
