#> assist:gateway/menu/pedestle.button.this
$summon minecraft:interaction ~ ~ ~ {Tags:["assist.gateway","assist.gateway.pedestle","assist.gateway.new"],CustomName:{translate:"assist.area.$(color)"},data:{index:$(index),color:$(color)},width:0.375f,height:0.75f,response:0b}
$summon minecraft:item ~ ~0.25 ~ {Tags:["assist.gateway","assist.gateway.pedestle","assist.gateway.dep","assist.gateway.new"],NoGravity:1b,Invulnerable:1b,PickupDelay:32767s,Age:-32768s,Glowing:1b,Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"minecraft:$(color)_stained_glass"}}}
team join assist.gateway.gold @e[type=minecraft:item,distance=0..1,tag=assist.gateway.pedestle,tag=assist.gateway.new]
