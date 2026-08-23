execute as @a[gamemode=!spectator,limit=2] at @s run summon minecraft:marker ~ 155 ~ {Tags:["icebird.b1s2"]}
execute as @e[tag=icebird.b1s2] store result score @s icebird.core run random value 1..2
playsound black:ring block @a ~ ~ ~ 2 1
bossbar set icebird.boss1_skill name {translate:"black.b1s2_item"}
bossbar set icebird.boss1_skill max 100
execute at @n[tag=icebird.b1s2] run playsound minecraft:entity.horse.death block @a ~ ~ ~ 2 0.6
scoreboard players set $boss1.stop icebird.boss1 1