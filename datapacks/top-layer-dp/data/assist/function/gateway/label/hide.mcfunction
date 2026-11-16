#> assist:gateway/label/hide

data merge entity @s[tag=!assist.gateway.con] {transformation:{translation:[0.0f,-0.03125f,0.0f]},start_interpolation:0}
data merge entity @s[tag=assist.gateway.con] {transformation:{translation:[0.0f,-0.03125f,-0.046875f]},start_interpolation:0}
execute if score $this assist.gateway.awake matches 1 run data merge entity @s {Glowing:0b}
