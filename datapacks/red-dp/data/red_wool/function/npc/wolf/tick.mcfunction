attribute @s max_health base set 1000

execute store result score wolf_hp red_wool.enemy run data get entity @s Health 10
scoreboard players set wolf_damage red_wool.enemy 10000
scoreboard players operation wolf_damage red_wool.enemy -= wolf_hp red_wool.enemy

execute store result storage minecraft:red_wool wolf_damage float 0.4 run scoreboard players get wolf_damage red_wool.enemy
data modify storage red_wool wolf_owner set from entity @s owner

execute if score wolf_damage red_wool.enemy matches 1.. run function red_wool:npc/wolf/damage with storage red_wool
data modify entity @s Health set value 1000
effect clear @s absorption
effect clear @s resistance

execute on owner run item replace entity @n[tag = red_wool.wolf.active] weapon.mainhand from entity @s weapon.mainhand
execute on owner run item replace entity @n[tag = red_wool.wolf.active] weapon.offhand from entity @s weapon.offhand