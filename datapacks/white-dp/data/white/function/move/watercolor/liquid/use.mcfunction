
summon item ~ ~ ~ {Tags:[white.move.watercolor.liquid,"summon"],Item:{id:"paper",components:{item_model:"air"}},PickupDelay:32767s,Age:-32768s}

execute as @e[tag=summon,type=item,limit=1] run function white:sys/motion {s:1}
scoreboard players operation @e[tag=summon,type=item,limit=1] white.move.watercolor.color = @s white.move.watercolor.duration

function white:sys/bullet/init
