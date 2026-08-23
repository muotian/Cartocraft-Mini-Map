
scoreboard players add @s brown_wool.gale_blade_alter1 1

execute if entity @s[tag=brown_wool.gale_blade_alter1] if score @s brown_wool.gale_blade_alter1 matches 1.. run function brown_wool:item/weapon/gale_blade_alter/particle1
execute if entity @s[tag=brown_wool.gale_blade_alter2] if score @s brown_wool.gale_blade_alter1 matches 1.. run function brown_wool:item/weapon/gale_blade_alter/particle2

execute if entity @s[tag=brown_wool.gale_blade_alter1] if score @s brown_wool.gale_blade_alter1 matches 10 at @s as @a[distance=..3.2] run effect give @s speed 8 2 true
execute if entity @s[tag=brown_wool.gale_blade_alter1] if score @s brown_wool.gale_blade_alter1 matches 10 at @s as @a[distance=..3.2] run playsound entity.firework_rocket.launch master @s
execute if entity @s[tag=brown_wool.gale_blade_alter1] if score @s brown_wool.gale_blade_alter1 matches 10 at @s run particle dust{color:[1, 1, 1],scale:2.5} ~ ~1 ~ 1.5 0.5 1.5 0.1 300

execute if entity @s[tag=brown_wool.gale_blade_alter2] if score @s brown_wool.gale_blade_alter1 matches 10 at @s as @a[distance=..5.2] run effect give @s speed 12 3 true
execute if entity @s[tag=brown_wool.gale_blade_alter2] if score @s brown_wool.gale_blade_alter1 matches 10 at @s as @a[distance=..5.2] run playsound entity.firework_rocket.launch master @s
execute if entity @s[tag=brown_wool.gale_blade_alter2] if score @s brown_wool.gale_blade_alter1 matches 10 at @s run particle dust{color:[1, 1, 1],scale:2.5} ~ ~1 ~ 2 0.5 2 0.1 300


execute if score @s brown_wool.gale_blade_alter1 matches 10.. run kill @s

