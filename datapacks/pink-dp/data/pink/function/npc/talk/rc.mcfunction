#
advancement revoke @s only pink:npc/talk_rc

playsound block.dispenser.fail player @s ~ ~ ~ 1 1

# close other
tp @e[tag=pink_npc,tag=!main,tag=!pink_npc.close] ~ ~-100 ~
kill @e[tag=pink_npc,tag=!main,tag=!pink_npc.close]

#
execute at @n[tag=pink_npc,tag=main] anchored eyes run function pink:npc/talk/talk_summon

#
data modify storage pink:npc_talk pass set value 0
data merge storage pink:npc_talk {_line_text:[{star:[0,16,13,15]},{flame:[0,17,10,18]},{me:[0,8,11,8,8,13]}]}
