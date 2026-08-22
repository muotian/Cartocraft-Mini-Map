kill @e[tag=wool_purple.npc.swordmaster_mannequin]
kill @e[tag=wool_purple.npc.swordmaster.dialog]
kill @e[tag=wool_purple.npc.swordmaster]
kill @e[tag=wool_purple.npc.swordmaster.dialog.branch.1]
kill @e[tag=wool_purple.npc.swordmaster.dialog.branch.2]
kill @e[tag=wool_purple.aspectslayer_longsword_wear]
kill @e[tag=wool_purple.purity_dagger_wear]
function ordered_splinter:npc/swordmaster/dialog/end

summon mannequin ~ ~ ~ {immovable:1b,Health:1024,profile:{model:"wide",texture:"wool_purple:skin/swordmaster",cape:"wool_purple:cape/red_cape"},hide_description:true,Invulnerable:1b,attributes:[{id:max_health,base:1024}],Tags:[wool_purple.npc.swordmaster_mannequin,wool_purple.no_give_sword]}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.swordmaster"],width:1,height:2,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.swordmaster.dialog.branch.1"],width:1.8,height:0.15,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.swordmaster.dialog.branch.2"],width:1.8,height:0.15,response:true}
summon text_display ~ ~ ~ {text:[{translate:npc.swordmaster.dialog.condition.1,color:white}],Tags:[wool_purple.npc.swordmaster.dialog.condition],billboard:"center",teleport_duration:1b,background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},line_width:2000}
summon item_display ~ ~ ~ {Tags:[wool_purple.aspectslayer_longsword_wear],item:{id:iron_sword,components:{item_model:"wool_purple:aspectslayer_longsword_item"}},teleport_duration:1b,transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0.5001636f,0.5001636f,-0.49983633f,-0.49983633f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:[wool_purple.purity_dagger_wear],item:{id:iron_sword,components:{item_model:"wool_purple:purity_dagger_item"}},teleport_duration:1b,transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0.5001636f,0.5001636f,-0.49983633f,-0.49983633f],scale:[1f,1f,1f]}}