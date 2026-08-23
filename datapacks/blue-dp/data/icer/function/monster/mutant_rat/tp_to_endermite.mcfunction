tag @s add icer.mutant_rat_tp
execute as @e[tag=aj.rat.root,type=item_display,distance=..10] if score @s aj.id = @n[tag=icer.mutant_rat_tp] aj.id rotated ~ 0 run tp @s ^ ^ ^-0.1 ~ ~
tag @s remove icer.mutant_rat_tp
#將aj實體傳送到與自己綁定的玩家身邊

execute store result score @s icer.x_motion run data get entity @s Motion[0] 1000
execute store result score @s icer.y_motion run data get entity @s Motion[2] 1000
#將自己的motion貼到記分板上，乘1000倍避免小數被約分

execute if score @s icer.x_motion matches 0 if score @s icer.y_motion matches 0 if entity @s[tag=icer.moving] run function icer:monster/mutant_rat/moving_mode/change_to_standing
#如果自己沒有在移動，則切換成站立狀態

execute unless score @s icer.x_motion matches 0 if entity @s[tag=icer.standing] run function icer:monster/mutant_rat/moving_mode/change_to_moving
execute unless score @s icer.y_motion matches 0 if entity @s[tag=icer.standing] run function icer:monster/mutant_rat/moving_mode/change_to_moving
#如果有在移動，則切換成移動狀態