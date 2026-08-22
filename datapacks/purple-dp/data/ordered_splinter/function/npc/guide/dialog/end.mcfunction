playsound minecraft:ui.toast.out player @a ~ ~ ~ 2 1.2
kill @e[tag=wool_purple.npc.guide.dialog]
kill @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display]
kill @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display]
scoreboard players set #guide wool_purple.npc 1
tag @a remove wool_purple.agree_to_talk
kill @e[tag=wool_purple.npc.guide.dialog.condition]
summon text_display ~ ~ ~ {text:[{translate:npc.guide.dialog.condition.1,color:white},{translate:item.minecraft.gold_nugget,color:yellow},{translate:npc.guide.dialog.condition.2,color:white}],Tags:[wool_purple.npc.guide.dialog.condition],billboard:"center",teleport_duration:1b,background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}