scoreboard players add @s pink.monster.gravity.jump 1

title @s times 0 10 0

execute if score @s pink.monster.gravity.jump matches 0 run title @s title {"text":"\uE000","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 1 run title @s title {"text":"\uE002","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 2 run title @s title {"text":"\uE004","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 3 run title @s title {"text":"\uE006","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 4 run title @s title {"text":"\uE008","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 5 run title @s title {"text":"\uE010","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 6 run title @s title {"text":"\uE012","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 7 run title @s title {"text":"\uE013","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 8 run title @s title {"text":"\uE014","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 9 run title @s title {"text":"\uE015","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 10 run title @s title {"text":"\uE016","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 11 run title @s title {"text":"\uE017","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 11 run title @s title {"text":"\uE018","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 13 run title @s title {"text":"\uE019","font":"pink:misc","shadow_color":16777215}
execute if score @s pink.monster.gravity.jump matches 14 run title @s title {"text":"\uE020","font":"pink:misc","shadow_color":16777215}

execute if score @s pink.monster.gravity.jump matches 14.. run function pink:monster/gravity/abnormal_gravity_remove