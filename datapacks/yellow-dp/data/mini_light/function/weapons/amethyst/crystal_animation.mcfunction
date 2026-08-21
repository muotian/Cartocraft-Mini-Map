# schedule 觸發

execute as @e[type=item_display,tag=animation, tag=crystal] run data merge entity @s {start_interpolation:0,interpolation_duration:3, transformation:{scale:[0.2f,1f,0.2f]}}

tag @e[type=item_display,tag=animation, tag=crystal] remove animation