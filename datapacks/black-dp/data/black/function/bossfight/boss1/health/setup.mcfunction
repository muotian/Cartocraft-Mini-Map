execute if score $players icebird.core matches 1 run bossbar set minecraft:icebird.boss1_1 max 166667
execute if score $players icebird.core matches 1 run bossbar set minecraft:icebird.boss1_2 max 166667

execute if score $players icebird.core matches 2.. run bossbar set minecraft:icebird.boss1_1 max 188888
execute if score $players icebird.core matches 2.. run bossbar set minecraft:icebird.boss1_2 max 188888

execute store result bossbar icebird.boss1_1 value store result score $maxhp icebird.boss1 store result score @n[tag=icebird.boss1] black.boss_real.hp run bossbar get minecraft:icebird.boss1_1 max
execute store result bossbar icebird.boss1_2 value store result score $maxhp icebird.boss1 store result score @n[tag=icebird.boss1] black.boss_fake.hp run bossbar get minecraft:icebird.boss1_2 max

scoreboard players set #2 icebird.core 2
scoreboard players operation #50hp icebird.boss1 = $maxhp icebird.boss1
scoreboard players operation #50hp icebird.boss1 /= #2 icebird.core

bossbar set icebird.boss1_1 players @a
bossbar set icebird.boss1_2 players @a
bossbar set minecraft:icebird.boss1_1 visible true
bossbar set minecraft:icebird.boss1_2 visible true