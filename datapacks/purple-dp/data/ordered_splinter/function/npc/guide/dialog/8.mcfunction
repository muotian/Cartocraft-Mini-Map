playsound minecraft:ui.loom.select_pattern player @a ~ ~ ~ 2 1.2
kill @e[tag=wool_purple.npc.guide.dialog]
kill @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display]
summon text_display ~ ~ ~ {text:[{translate:npc.guide.dialog.8,color:black}],Tags:["wool_purple.npc.guide.dialog"],billboard:"center",teleport_duration:1b,background:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
summon text_display ~ ~ ~ {text:[{translate:npc.guide.dialog.8-1,color:white}],Tags:["wool_purple.npc.guide.dialog.branch.1"],billboard:"center",teleport_duration:1b,background:-16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
scoreboard players set #guide wool_purple.npc 8