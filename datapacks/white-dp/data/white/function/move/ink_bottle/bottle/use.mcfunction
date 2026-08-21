
summon minecraft:lingering_potion ~ ~ ~ {Item:{id:lingering_potion,components:{potion_contents:{custom_color:9826044}}},Passengers:[{id:"marker",Tags:[white.move.ink_bottle.bottle,"summon"]}]}

execute as @e[tag=summon,type=marker,limit=1] on vehicle run function white:sys/motion {s:0.75}

function white:sys/bullet/init