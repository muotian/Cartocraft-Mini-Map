item modify entity @s weapon.mainhand light_green:deupgrade_spear_0
execute store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id
function light_green:item/piglin_girl/spear/left_click2 with storage light_green:weapon