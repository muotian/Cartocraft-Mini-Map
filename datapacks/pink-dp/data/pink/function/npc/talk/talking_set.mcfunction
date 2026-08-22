#
$data modify storage pink:npc_talk line_text set from storage pink:npc_talk _line_text[].$(type)[$(line)]

execute as @n[tag=pink_npc.talk.text,type=text_display] run function pink:npc/talk/talking1 with storage pink:npc_talk {}