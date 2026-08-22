playsound minecraft:ui.loom.select_pattern player @a ~ ~ ~ 2 1.2
playsound minecraft:entity.player.burp player @a ~ ~ ~ 2 0.8
kill @e[tag=wool_purple.npc.drunkard.dialog]
kill @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display]
kill @e[tag=wool_purple.npc.drunkard.dialog.condition]
summon text_display ~ ~ ~ {text:[{translate:npc.drunkard.dialog.6,color:black}],Tags:["wool_purple.npc.drunkard.dialog"],billboard:"center",teleport_duration:1b,background:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
summon text_display ~ ~ ~ {text:[{translate:npc.drunkard.dialog.6-1,color:white}],Tags:["wool_purple.npc.drunkard.dialog.branch.1"],billboard:"center",teleport_duration:1b,background:-16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
scoreboard players set #drunkard wool_purple.npc 6
effect give @a[distance=..5] nausea 300 2
effect give @a[distance=..5] slowness 30 0