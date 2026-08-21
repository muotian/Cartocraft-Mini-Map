execute if score @s light_green.dialog matches 1 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog1"}]
execute if score @s light_green.dialog matches 2 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog2"}]
execute if score @s light_green.dialog matches 3 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog3"}]
execute if score @s light_green.dialog matches 4 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog4"}]
execute if score @s light_green.dialog matches 5 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog5"}]
execute if score @s light_green.dialog matches 6 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog6"}]
execute if score @s light_green.dialog matches 7 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog7"}]
execute if score @s light_green.dialog matches 8 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog8"}]
execute if score @s light_green.dialog matches 9 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog9"}]
execute if score @s light_green.dialog matches 10 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog10"}]
execute if score @s light_green.dialog matches 11 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog11"}]
execute if score @s light_green.dialog matches 12 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog12"}]
execute if score @s light_green.dialog matches 13 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog13"}]
execute if score @s light_green.dialog matches 14 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog14"}]
execute if score @s light_green.dialog matches 15 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog15"}]
execute if score @s light_green.dialog matches 16 run tellraw @s [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog16"}]

scoreboard players add @s light_green.dialog 1
execute if score @s light_green.dialog matches 11 run scoreboard players set $piglin_girl.already light_green.main.math 1
execute if score @s light_green.dialog matches 11 run scoreboard players reset @s light_green.dialog 
execute if score @s light_green.dialog matches 14 run function light_green:area_level/dialog/end
execute if score @s light_green.dialog matches 17 run function light_green:area_level/dialog/end
scoreboard players reset @s light_green.dialog.time