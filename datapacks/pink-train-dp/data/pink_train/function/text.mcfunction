#
$summon text_display ^ ^1.5 ^ {billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:"$(hp)",Tags:["pink.dummy.damage.text","new"]}
summon item ^ ^1 ^ {Item:{id:"stone",components:{item_model:"air"}},PickupDelay:-1,Tags:["pink.dummy.damage.item","new"],Motion:[0.1,0.3,0.1]}

ride @n[tag=pink.dummy.damage.text,tag=new] mount @n[tag=pink.dummy.damage.item,tag=new]

tag @n[tag=pink.dummy.damage.text,tag=new] remove new
tag @n[tag=pink.dummy.damage.item,tag=new] remove new

