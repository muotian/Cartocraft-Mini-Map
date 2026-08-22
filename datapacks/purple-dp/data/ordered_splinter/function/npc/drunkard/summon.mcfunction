kill @e[tag=wool_purple.npc.drunkard_mannequin]
kill @e[tag=wool_purple.npc.drunkard.dialog]
kill @e[tag=wool_purple.npc.drunkard]
kill @e[tag=wool_purple.npc.drunkard.dialog.branch.1]
kill @e[tag=wool_purple.npc.drunkard.dialog.branch.2]
function ordered_splinter:npc/drunkard/dialog/end

summon mannequin ~ ~ ~ {immovable:1b,Health:1024,profile:{model:"wide",texture:"wool_purple:skin/drunkard"},hide_description:true,Invulnerable:1b,attributes:[{id:max_health,base:1024}],Tags:[wool_purple.npc.drunkard_mannequin,wool_purple.no_give_antidote,wool_purple.no_conversation_yet]}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.drunkard"],width:1,height:2,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.drunkard.dialog.branch.1"],width:1.8,height:0.15,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.drunkard.dialog.branch.2"],width:1.8,height:0.15,response:true}
summon text_display ~ ~ ~ {text:[{translate:npc.drunkard.dialog.condition.1,color:white}],Tags:[wool_purple.npc.drunkard.dialog.condition],billboard:"center",teleport_duration:1b,background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}