playsound minecraft:ui.toast.out player @a ~ ~ ~ 2 1.2
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 2 1.2
kill @e[tag=wool_purple.npc.drunkard.dialog]
kill @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display]
scoreboard players set #drunkard wool_purple.npc 1
kill @e[tag=wool_purple.npc.drunkard.dialog.condition]
summon text_display ~ ~ ~ {text:[{translate:npc.drunkard.dialog.condition.1,color:white}],Tags:[wool_purple.npc.drunkard.dialog.condition],billboard:"center",teleport_duration:1b,background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
tag @e[tag=wool_purple.npc.drunkard_mannequin,tag=!wool_purple.no_conversation_yet] add wool_purple.no_conversation_yet