
execute unless score @s brown_wool.thunder_spirit.narrative_marker matches 82.. run scoreboard players add @s brown_wool.thunder_spirit.narrative_marker 1


execute if score @s brown_wool.thunder_spirit.narrative_marker matches 1 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.narrative_marker1",color:"aqua"},{text:"[",color:"light_purple"},{translate:"item.brown_wool.lightning_crystal",color:"light_purple"},{text:"]",color:"light_purple"}]
execute if score @s brown_wool.thunder_spirit.narrative_marker matches 41 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.narrative_marker2",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit.narrative_marker matches 81 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.narrative_marker3",color:"aqua"}]


