#
execute store result storage pink:regeneration hp float 10 run data get entity @s Health
execute store result score $hp pink.resistance.hp run data get storage pink:regeneration hp
$scoreboard players set $regeneration pink.resistance.hp $(hp)
scoreboard players operation $regeneration pink.resistance.hp *= %*10 pink.resistance.hp

execute store result storage pink:regeneration max_hp float 10 run attribute @s max_health get
execute store result score $max_hp pink.resistance.hp run data get storage pink:regeneration max_hp

scoreboard players operation $hp pink.resistance.hp += $regeneration pink.resistance.hp

execute if score $hp pink.resistance.hp >= $max_hp pink.resistance.hp run scoreboard players operation $hp pink.resistance.hp = $max_hp pink.resistance.hp

execute store result storage pink:regeneration regeneration float 0.1 run scoreboard players get $hp pink.resistance.hp
execute store result storage pink:regeneration max_hp float 1 run attribute @s max_health get

#
function pink:regeneration/2 with storage pink:regeneration








