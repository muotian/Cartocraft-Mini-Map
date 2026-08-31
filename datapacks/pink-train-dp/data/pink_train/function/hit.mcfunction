#
execute store result storage pink:dummy hp double 1 run data get entity @s Health 100
execute store result score $hp pink.train.hp run data get storage pink:dummy hp

scoreboard players set $1000 pink.train.hp 100000
scoreboard players operation $1000 pink.train.hp -= $hp pink.train.hp
execute store result storage pink:dummy hp double 0.01 run scoreboard players get $1000 pink.train.hp

data modify entity @s Health set value 1000

#
function pink_train:text with storage pink:dummy {}


#
execute if entity @s[tag=!invulnerable] run scoreboard players operation @s pink.train.hp += $1000 pink.train.hp
kill @s[tag=!invulnerable,scores={pink.train.hp=3000..}]
