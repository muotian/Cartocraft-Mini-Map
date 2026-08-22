summon snowball ^ ^1 ^1 {Tags:["gray.new"],Passengers:[{id:"minecraft:marker",Tags:["gray.desert_ranger_charge"]}],Item:{id:"minecraft:slime_ball",count:1}}
tag @s add gray.dune_recluse.temp
execute as @e[type=snowball,tag=gray.new,limit=1] at @s run function ccmini_gray:mob/desert_ranger/charge/setmotion
tag @s remove gray.dune_recluse.temp
tag @s remove gray.desert_ranger_preparing