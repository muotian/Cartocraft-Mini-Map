kill @e[tag=wool_purple.npc.guide_mannequin]
kill @e[tag=wool_purple.npc.guide.dialog]
kill @e[tag=wool_purple.npc.guide]
kill @e[tag=wool_purple.npc.guide.dialog.branch.1]
kill @e[tag=wool_purple.npc.guide.dialog.branch.2]
function ordered_splinter:npc/guide/dialog/end

summon mannequin ~ ~ ~ {immovable:1b,Health:1024,profile:{model:"slim",texture:"wool_purple:skin/guide"},hide_description:true,Invulnerable:1b,attributes:[{id:max_health,base:1024},{id:scale,base:0.975}],Tags:[wool_purple.npc.guide_mannequin,wool_purple.no_conversation_yet]}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.guide"],width:1,height:2,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.guide.dialog.branch.1"],width:1.8,height:0.15,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.guide.dialog.branch.2"],width:1.8,height:0.15,response:true}
summon text_display ~ ~ ~ {text:[{translate:npc.guide.dialog.condition.1,color:white},{translate:item.minecraft.gold_nugget,color:yellow},{translate:npc.guide.dialog.condition.2,color:white}],Tags:[wool_purple.npc.guide.dialog.condition],billboard:"center",teleport_duration:1b,background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}