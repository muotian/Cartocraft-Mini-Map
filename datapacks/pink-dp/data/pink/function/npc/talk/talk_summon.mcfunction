# close
tp @e[tag=pink_npc,tag=!main,tag=!pink_npc.close] ~ ~-100 ~
kill @e[tag=pink_npc,tag=!main,tag=!pink_npc.close]

#
summon text_display ^ ^ ^.8 {billboard:"vertical",Tags:["pink_npc","pink_npc.talk.star","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:[{translate:"npc.pink.talk1.about",color:"gray",bold:false},{translate:"npc.pink.talk1.star",color:"gray",bold:false}],background:-13224394,teleport_duration:1}
summon text_display ^ ^-.4 ^.8 {billboard:"vertical",Tags:["pink_npc","pink_npc.talk.monster","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:[{translate:"npc.pink.talk1.about",color:"gray",bold:false},{translate:"npc.pink.talk1.flame",color:"gray",bold:false}],background:-13224394,teleport_duration:1}
summon text_display ^ ^-.8 ^.8 {billboard:"vertical",Tags:["pink_npc","pink_npc.talk.me","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:[{translate:"npc.pink.talk1.about",color:"gray",bold:false},{translate:"npc.pink.talk1.me",color:"gray",bold:false}],background:-13224394,teleport_duration:1}

summon villager ^ ^.2 ^0.8 {Silent:1b,Tags:["pink_npc","pink_npc.talk.star","interaction"],Invulnerable:1b,attributes:[{id:scale,base:0.4f}],NoAI:1b}
summon villager ^ ^-.28 ^0.8 {Silent:1b,Tags:["pink_npc","pink_npc.talk.monster","interaction"],Invulnerable:1b,attributes:[{id:scale,base:0.3f}],NoAI:1b}
summon villager ^ ^-.68 ^0.8 {Silent:1b,Tags:["pink_npc","pink_npc.talk.me","interaction"],Invulnerable:1b,attributes:[{id:scale,base:0.3f}],NoAI:1b}

