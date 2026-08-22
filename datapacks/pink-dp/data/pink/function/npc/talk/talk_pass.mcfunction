#
data modify storage pink:npc_talk pass set value 1
execute as @n[tag=pink_npc.talk.text,type=text_display] run function pink:npc/talk/talking1 with storage pink:npc_talk {}
