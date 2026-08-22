data modify storage pink:npc_talk pass set value 0

scoreboard players set $cd pink.npc.talk 0
data modify storage pink:npc_talk text set value 1
data modify storage pink:npc_talk talk set value []

function pink:npc/talk/talking_set with storage pink:npc_talk {}
