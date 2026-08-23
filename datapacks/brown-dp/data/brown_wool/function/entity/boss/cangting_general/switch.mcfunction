
execute if score @s brown_wool.cangting_general.switch matches 20 run tellraw @a[tag=brown_wool.cangting_general.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.cangting_general",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.cangting_general.switch1",color:"red"}]
execute if score @s brown_wool.cangting_general.switch matches 70 run tellraw @a[tag=brown_wool.cangting_general.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.cangting_general",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.cangting_general.switch2",color:"red"}]

execute if score @s brown_wool.cangting_general.switch matches 70 as @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] at @s run function brown_wool:entity/boss/cangting_general/terrain0


execute unless score @s brown_wool.cangting_general.switch matches 71.. run scoreboard players add @s brown_wool.cangting_general.switch 1





