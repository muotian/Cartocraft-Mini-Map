playsound minecraft:ui.toast.out player @a ~ ~ ~ 2 1.2
kill @e[tag=wool_purple.npc.alchemist1.dialog]
kill @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display]
scoreboard players set #alchemist1 wool_purple.npc 1
kill @e[tag=wool_purple.npc.alchemist1.dialog.condition]
summon text_display ~ ~ ~ {text:[{translate:npc.alchemist1.dialog.condition.1,color:white}],Tags:[wool_purple.npc.alchemist1.dialog.condition],billboard:"center",teleport_duration:1b,background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}