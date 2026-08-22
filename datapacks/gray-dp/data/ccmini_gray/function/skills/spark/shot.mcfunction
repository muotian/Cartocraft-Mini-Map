#發射火球
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 1
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1
summon item ~ ~ ~ {Item:{id:"white_dye",components:{item_model:"gray_empty"}},Age:-32768,PickupDelay:32767,Passengers:[{id:"item_display",item:{id:"white_dye",components:{item_model:"minecraft:gray_fireball"}},Tags:[new,gray_fireball],transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.5,1.5,1.5],translation:[0.0,0.5,0.0]}}],Tags:[motion.new]}

execute rotated as @s as @e[type=item_display,tag=new] positioned as @s run rotate @s ~ ~
tag @e[type=item_display,tag=new] remove new
execute as @e[type=item,tag=motion.new] store result entity @s Motion[0] double 0.0001 run scoreboard players get $pm.x gray.Pos
execute as @e[type=item,tag=motion.new] store result entity @s Motion[1] double 0.0001 run scoreboard players get $pm.y gray.Pos
execute as @e[type=item,tag=motion.new] store result entity @s Motion[2] double 0.0001 run scoreboard players get $pm.z gray.Pos
tag @e[type=item,tag=motion.new] remove motion.new
scoreboard players reset $pm.x gray.Pos
scoreboard players reset $pm.y gray.Pos
scoreboard players reset $pm.z gray.Pos
scoreboard players reset $pp.x gray.Pos
scoreboard players reset $pp.y gray.Pos
scoreboard players reset $pp.z gray.Pos
