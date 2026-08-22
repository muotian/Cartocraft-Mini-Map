#
scoreboard players add $cd pink.npc.talk 1

execute if score $cd pink.npc.talk matches 13.. run function pink:npc/talk/talking1 with storage pink:npc_talk {}

