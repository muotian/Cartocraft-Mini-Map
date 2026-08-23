
execute if score @s brown_wool.thunder_rock_guard.switch matches 20 run tellraw @a[tag=brown_wool.thunder_rock_guard.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_rock_guard",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_rock_guard.switch1",color:"red"}]
execute if score @s brown_wool.thunder_rock_guard.switch matches 70 run tellraw @a[tag=brown_wool.thunder_rock_guard.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_rock_guard",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_rock_guard.switch2",color:"red"}]

execute if score @s brown_wool.thunder_rock_guard.switch matches 70 as @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunder_rock_guard/terrain0


execute unless score @s brown_wool.thunder_rock_guard.switch matches 71.. run scoreboard players add @s brown_wool.thunder_rock_guard.switch 1





