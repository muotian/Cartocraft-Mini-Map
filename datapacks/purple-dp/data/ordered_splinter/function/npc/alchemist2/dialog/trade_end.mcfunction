tp @e[tag=wool_purple.trader] ~ -300 ~
kill @e[tag=wool_purple.trader]
kill @e[tag=wool_purple.npc.alchemist2.dialog.condition]
tag @s remove wool_purple.npc.trading
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.alchemist2"],width:1,height:2,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.alchemist2.dialog.branch.1"],width:1.8,height:0.15,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["wool_purple.npc.alchemist2.dialog.branch.2"],width:1.8,height:0.15,response:true}
function ordered_splinter:npc/alchemist2/dialog