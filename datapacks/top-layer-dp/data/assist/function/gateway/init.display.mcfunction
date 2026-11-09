#> assist:gateway/init.display

$data merge entity @s {Tags:["assist.gateway","assist.gateway.center_glass"],block_state:{Name:"minecraft:$(color)_stained_glass"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],translation:[-0.5005f,-0.5005f,-0.5005f]}}
execute store result entity @s data.id int 1 run scoreboard players get $init assist.gateway.id
scoreboard players operation @s assist.gateway.id = $init assist.gateway.id
