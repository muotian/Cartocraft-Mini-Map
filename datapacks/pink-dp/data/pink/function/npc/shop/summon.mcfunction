#
summon item_display ^0.8 ^-.2 ^0.8 {glow_color_override:2424831,billboard:"vertical",Tags:["pink_npc","pink_npc.shop","display"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",Tags:["pink_npc","pink_npc.shop","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:{translate:"npc.pink.shop1",color:"gray",bold:false},background:0}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]},item:{id:"bundle",count:1},teleport_duration:1}
summon villager ^0.8 ^-.5 ^0.8 {VillagerData:{type:plains,profession:farmer,level:2},Silent:1b,Tags:["pink_npc","pink_npc.shop","interaction"],Invulnerable:1b,attributes:[{id:scale,base:0.5f}],NoAI:1b,Offers:{Recipes:[{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}},{buy:{id:clock,count:1},sell:{id:clock,count:1}}]}}

# t
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[0].buy.count set from storage pink:npc_shop star1[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[0].buy.components set from storage pink:npc_shop star1[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[0].sell.components set from storage pink:npc_shop star1[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[1].buy.count set from storage pink:npc_shop star2[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[1].buy.components set from storage pink:npc_shop star2[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[1].sell.components set from storage pink:npc_shop star2[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[2].buy.count set from storage pink:npc_shop star3[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[2].buy.components set from storage pink:npc_shop star3[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[2].sell.components set from storage pink:npc_shop star3[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[3].buy.count set from storage pink:npc_shop black1[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[3].buy.components set from storage pink:npc_shop black1[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[3].sell.components set from storage pink:npc_shop black1[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[4].buy.count set from storage pink:npc_shop black2[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[4].buy.components set from storage pink:npc_shop black2[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[4].sell.components set from storage pink:npc_shop black2[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[5].buy.count set from storage pink:npc_shop black3[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[5].buy.components set from storage pink:npc_shop black3[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[5].sell.components set from storage pink:npc_shop black3[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[6].buy.count set from storage pink:npc_shop white1[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[6].buy.components set from storage pink:npc_shop white1[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[6].sell.components set from storage pink:npc_shop white1[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[7].buy.count set from storage pink:npc_shop white2[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[7].buy.components set from storage pink:npc_shop white2[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[7].sell.components set from storage pink:npc_shop white2[2].components

data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[8].buy.count set from storage pink:npc_shop white3[1].count
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[8].buy.components set from storage pink:npc_shop white3[0].components
data modify entity @n[tag=pink_npc.shop,tag=interaction] Offers.Recipes[8].sell.components set from storage pink:npc_shop white3[2].components
