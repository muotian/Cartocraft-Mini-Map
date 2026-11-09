#> assist:gateway/menu/pedestle.summon

data merge entity @s {Tags:["assist.gateway","assist.gateway.pedestle"],block_state:{Name:"minecraft:polished_deepslate"},interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.375f,0.375f,0.375f],translation:[-0.1875f,-0.375f,-0.1875f]}}
$data modify entity @s data set from storage assist:gateway colors[{index:$(index)}]
scoreboard players operation @s assist.gateway.id = $this assist.gateway.id
