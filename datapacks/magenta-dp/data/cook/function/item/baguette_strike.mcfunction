#

summon item_display ~ ~ ~ {item:{id:"copper_sword",components:{item_model:"magenta:baguette"},count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[0f,0f,0f]},Tags:["MagentaBaguette"],item_display:"head"}
tp @e[limit=1,sort=nearest,tag=MagentaBaguette,type=item_display] ^ ^1 ^1 ~60 90
data modify entity @e[limit=1,sort=nearest,tag=MagentaBaguette,type=item_display] teleport_duration set value 1

scoreboard players set @s MagentaBaguette 12
scoreboard players set @s MagentaBaguetteCD 60
