#先手刪除
tp @e[tag=icebird.boss1_spirit] ~ ~-100 ~
kill @e[tag=icebird.boss1_spirit]

execute at @n[tag=black.boss1_center] run summon mannequin ~5 ~ ~-6 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,immovable:true,Tags:["icebird.boss1_spirit","icebird.boss1_spirit.talk","icebird.boss_spirit"],profile:"jakY1299"}
execute at @n[tag=black.boss1_center] run summon interaction ~5 ~ ~-6 {width:1f,height:2f,Tags:["icebird.boss1_spirit","icebird.boss1_spirit.talk","icebird.boss_spirit"],Passengers:[{id:"minecraft:text_display",width:0.25f,height:0.5f,billboard:"vertical",see_through:0b,Rotation:[45F,0F],Tags:["icebird.boss1_spirit","icebird.boss1_spirit.text","icebird.boss_spirit"],Passengers:[{id:"minecraft:text_display",width:0.25f,height:0.5f,billboard:"vertical",see_through:0b,Rotation:[45F,0F],Tags:["icebird.boss1_spirit","icebird.boss1_spirit.text","icebird.boss_spirit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0.75f],scale:[1f,1f,1f]},text:{"bold":true,"color":"#00E6FF","italic":true,"translate":"black.boss1.spirit_name"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0.75f],scale:[1f,1f,1f]},text:[{"bold":true,"color":"yellow","italic":true,"text":"→ "},{"color":"gray","italic":true,"translate":"black.boss1.rightclick"},{"bold":true,"color":"yellow","italic":true,"text":" ←"}]}]}

# black.boss1.spirit_name = 機械城精靈 (Mechagon Spirit)
# black.boss1.rightclick = 右鍵點擊對話 (Right click to talk)