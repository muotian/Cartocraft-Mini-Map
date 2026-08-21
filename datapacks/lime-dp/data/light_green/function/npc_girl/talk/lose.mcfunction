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
execute if score @s light_green.dialog matches 5 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose1"}]
execute if score @s light_green.dialog matches 6 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose2"}]
execute if score @s light_green.dialog matches 7 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose3"}]
execute if score @s light_green.dialog matches 8 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose4"}]
execute if score @s light_green.dialog matches 9 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose5"}]
execute if score @s light_green.dialog matches 10 run scoreboard players set @s light_green.boss.attack_type 2
execute if score @s light_green.dialog matches 10 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose6"}]
execute if score @s light_green.dialog matches 11 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk_when_lose7"}]
execute if score @s light_green.dialog matches 12 run scoreboard players set @s light_green.boss.attack_type 1
execute if score @s light_green.dialog matches 12 as @p run function light_green:item/light_green_wool
execute if score @s light_green.dialog matches 12 run scoreboard players set $area_wool light_green.main.math 1
execute if score @s light_green.dialog matches 12 run scoreboard players set @s light_green.dialog.time -1
execute if score @s light_green.dialog matches 12 run tag @s add light_green.end