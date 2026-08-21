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
execute if score @s light_green.dialog matches 5 run scoreboard players set @s light_green.boss.attack_type 2
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level1"}]
execute if score @s light_green.dialog matches 6 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level2"}]
execute if score @s light_green.dialog matches 7 run scoreboard players set @s light_green.boss.attack_type 1
execute if score @s light_green.dialog matches 7 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level3"}]
execute if score @s light_green.dialog matches 8 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level4"}]
execute if score @s light_green.dialog matches 9 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level5"}]
execute if score @s light_green.dialog matches 10 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level6"}]
execute if score @s light_green.dialog matches 11 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level7"}]
execute if score @s light_green.dialog matches 12 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level8"}]
execute if score @s light_green.dialog matches 13 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level9"}]
execute if score @s light_green.dialog matches 14 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level10"}]
execute if score @s light_green.dialog matches 15 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level11"}]
execute if score @s light_green.dialog matches 16 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_level12"}]
execute if score @s light_green.dialog matches 17 as @p run function light_green:item/light_green_wool
execute if score @s light_green.dialog matches 17 run scoreboard players set $area_wool light_green.main.math 1
execute if score @s light_green.dialog matches 17 run scoreboard players set @s light_green.dialog.time -1
execute if score @s light_green.dialog matches 17 run tag @s add light_green.end