#> assist:gateway/label/destination

data merge entity @s {Tags:["assist.gateway","assist.gateway.label","assist.gateway.dest"],item:{count:1,id:"minecraft:white_stained_glass_pane"},interpolation_duration:2,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
rotate @s ~ ~
scoreboard players operation @s assist.gateway.id = $this assist.gateway.id
function assist:gateway/label/emerge
