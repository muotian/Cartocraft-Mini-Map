execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win1"}]
execute if score @s light_green.dialog matches 6 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win2"}]
execute if score @s light_green.dialog matches 7 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win3"}]
execute if score @s light_green.dialog matches 8 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win4"}]
execute if score @s light_green.dialog matches 9 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win5"}]
execute if score @s light_green.dialog matches 10 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win6"}]
execute if score @s light_green.dialog matches 11 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win7"}]
execute if score @s light_green.dialog matches 12 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win8"}]
execute if score @s light_green.dialog matches 13 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win9"}]
execute if score @s light_green.dialog matches 14 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win10"}]
execute if score @s light_green.dialog matches 15 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win11"}]
execute if score @s light_green.dialog matches 16 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win12"}]
execute if score @s light_green.dialog matches 17 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win13"}]
execute if score @s light_green.dialog matches 18 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win14"}]
execute if score @s light_green.dialog matches 19 if score $area_wool light_green.main.math matches 1 as @p run function light_green:item/piglin_girl/axe/give
execute if score @s light_green.dialog matches 19 if score $area_wool light_green.main.math matches 1 as @p run function light_green:item/piglin_girl/dagger/give
execute if score @s light_green.dialog matches 19 if score $area_wool light_green.main.math matches 1 as @p run function light_green:item/piglin_girl/spear/give
execute if score @s light_green.dialog matches 19 if score $area_wool light_green.main.math matches 1 run tag @s add light_green.end
execute if score @s light_green.dialog matches 19 unless score $area_wool light_green.main.math matches 1 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win15"}]
execute if score @s light_green.dialog matches 20 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_win16"}]
execute if score @s light_green.dialog matches 21 as @p run function light_green:item/piglin_girl/axe/give
execute if score @s light_green.dialog matches 21 as @p run function light_green:item/piglin_girl/dagger/give
execute if score @s light_green.dialog matches 21 as @p run function light_green:item/piglin_girl/spear/give
execute if score @s light_green.dialog matches 21 as @p run function light_green:item/light_green_wool
execute if score @s light_green.dialog matches 21 run scoreboard players set $area_wool light_green.main.math 1
execute if score @s light_green.dialog matches 21 run scoreboard players set @s light_green.dialog.time -1
execute if score @s light_green.dialog matches 21 run tag @s add light_green.end