scoreboard players operation @s wool_purple.boss_hp_late -= @s wool_purple.boss_hp

scoreboard players operation @s wool_purple.boss_custom_hp -= @s wool_purple.boss_hp_late

execute store result score @s wool_purple.boss_hp as a11-0-0-0-1 run data get entity @s Health

scoreboard players operation @s wool_purple.boss_hp_late = @s wool_purple.boss_hp

scoreboard players set @s wool_purple.boss_hurttime 10
function animated_java:archdemon/variants/hurt/apply
tag @s add wool_purple.boss_hurt

execute as a11-0-0-0-1 run effect give @s instant_damage 1 200 true
playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 2 1.2