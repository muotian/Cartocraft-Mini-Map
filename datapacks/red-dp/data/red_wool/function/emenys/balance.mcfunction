execute as @s[tag = red_wool.zombie] at @s run attribute @s max_health base set 10
execute as @s[tag = red_wool.zombie] at @s run attribute @s attack_damage base set 10

execute as @s[tag = red_wool.endermite] at @s run attribute @s max_health base set 15
execute as @s[tag = red_wool.skeleton] at @s run attribute @s max_health base set 15
execute as @s[tag = red_wool.wither_skeleton] at @s run attribute @s max_health base set 15
execute as @s[tag = red_wool.wither_skeleton] at @s run item replace entity @s weapon.mainhand with iron_pickaxe

execute as @s[tag = red_wool.skeleton] at @s run attribute @s max_health base set 10
execute as @s[tag = red_wool.skeleton] at @s run item replace entity @s weapon.mainhand with iron_sword

execute as @s[tag = red_wool.evoker] at @s run attribute @s max_health base set 30
execute as @s[tag = red_wool.evoker] at @s run data modify entity @s CustomName set value {"bold":true,"color":"red","translate":"red_wool.evoker"}
execute as @s[tag = red_wool.evoker] at @s run data modify entity @s CustomNameVisible set value true

execute as @s[tag = red_wool.slime] at @s run item replace entity @s weapon.mainhand with air

data modify entity @s DeathLootTable set value "red_wool:all_mobs"
data modify entity @s drop_chances set value {body:0.000, chest:0.000, feet:0.000, head:0.000, legs:0.000, mainhand:0.000, offhand:0.000, saddle:0.000}

tag @s add red_wool.balance