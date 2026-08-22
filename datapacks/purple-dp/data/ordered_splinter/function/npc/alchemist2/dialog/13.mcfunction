playsound minecraft:ui.loom.select_pattern player @a ~ ~ ~ 2 1.2
kill @e[tag=wool_purple.npc.alchemist2.dialog]
kill @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display]
kill @e[tag=wool_purple.npc.alchemist2.dialog.condition]
summon text_display ~ ~ ~ {text:[{translate:npc.alchemist2.dialog.13,color:black}],Tags:["wool_purple.npc.alchemist2.dialog"],billboard:"center",teleport_duration:1b,background:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
summon text_display ~ ~ ~ {text:[{translate:npc.alchemist2.dialog.13-1,color:white}],Tags:["wool_purple.npc.alchemist2.dialog.branch.1"],billboard:"center",teleport_duration:1b,background:-16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
tag @e[tag=wool_purple.npc.alchemist2_mannequin,tag=wool_purple.no_conversation_yet] remove wool_purple.no_conversation_yet
scoreboard players set #alchemist2 wool_purple.npc 13