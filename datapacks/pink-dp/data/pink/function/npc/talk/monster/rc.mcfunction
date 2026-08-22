#
advancement revoke @s only pink:npc/talk/monster_talk1

playsound block.dispenser.fail player @s ~ ~ ~ 1 1
# close other
tp @e[tag=pink_npc,tag=!main,tag=!pink_npc.close] ~ ~-100 ~
kill @e[tag=pink_npc,tag=!main,tag=!pink_npc.close]

#
execute at @n[tag=pink_npc,tag=main] anchored eyes run summon text_display ^ ^-.45 ^.8 {billboard:"vertical",Tags:["pink_npc","pink_npc.talk.text","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[0.7f,0.7f,0.7f]},text:[{translate:"",color:"gray",bold:false}],background:-13224394,teleport_duration:1,line_width:180}
execute at @n[tag=pink_npc,tag=main] anchored eyes run summon villager ^ ^-.3 ^0.8 {Silent:1b,Tags:["pink_npc","pink_npc.talk.text","interaction"],Invulnerable:1b,attributes:[{id:scale,base:0.5f}],NoAI:1b}

#
scoreboard players set $cd pink.npc.talk 0
data modify storage pink:npc_talk text set value 1
data modify storage pink:npc_talk line set value 1
data modify storage pink:npc_talk talk set value []
scoreboard players set $line pink.npc.talk 1
scoreboard players set $text pink.npc.talk 1
scoreboard players set $talk pink.npc.talk 2

data modify storage pink:npc_talk max_line set value 5
data modify storage pink:npc_talk line_text set from storage pink:npc_talk _line_text[].flame[1]
data modify storage pink:npc_talk type set value "flame"


execute as @n[tag=pink_npc.talk.text,type=text_display] run function pink:npc/talk/talking1 with storage pink:npc_talk {}

#
