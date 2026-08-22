playsound minecraft:ui.loom.select_pattern player @a ~ ~ ~ 2 1.2
kill @e[tag=wool_purple.npc.alchemist2.dialog]
kill @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display]
summon text_display ~ ~ ~ {text:[{translate:npc.alchemist2.dialog.15,color:black}],Tags:["wool_purple.npc.alchemist2.dialog"],billboard:"center",teleport_duration:1b,background:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
scoreboard players set #alchemist2 wool_purple.npc 0