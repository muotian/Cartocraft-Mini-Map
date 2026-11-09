#> assist:gateway/label/connection

data merge entity @s {Tags:["assist.gateway","assist.gateway.label","assist.gateway.con"],item:{count:1,id:"minecraft:exposed_copper_chain"},transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,0.5f],translation:[0.0f,0.0f,-0.046875f]}}
rotate @s ~ ~
scoreboard players operation @s assist.gateway.id = $this assist.gateway.id
function assist:gateway/label/emerge
