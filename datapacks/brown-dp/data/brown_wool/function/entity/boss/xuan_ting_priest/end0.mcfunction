


tag @s remove brown_wool.xuan_ting_priest.terrain_2
tag @a remove brown_wool.xuan_ting_priest.player
scoreboard players reset @a brown_wool.xuan_ting_priest.playsound
stopsound @a * brown_wool:custom.jingle_punks_cataclysmic_molten_core
bossbar set brown_wool.xuan_ting_priest players
bossbar set brown_wool.xuan_ting_priest visible false
execute unless score @s brown_wool.xuan_ting_priest.end matches 1.. at @s run function brown_wool:entity/boss/xuan_ting_priest/terrain0
execute unless score @s brown_wool.xuan_ting_priest.end matches 1.. at @s run summon marker ~ ~-0.4 ~16 {Tags:["brown_wool.xuan_ting_priest.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.xuan_ting_priest.end matches 1.. at @s run summon marker ~ ~-0.4 ~-16 {Tags:["brown_wool.xuan_ting_priest.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.xuan_ting_priest.end matches 1.. at @s run summon marker ~16 ~-0.4 ~ {Tags:["brown_wool.xuan_ting_priest.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.xuan_ting_priest.end matches 1.. at @s run summon marker ~-16 ~-0.4 ~ {Tags:["brown_wool.xuan_ting_priest.end1"],Rotation:[0,0]}
function brown_wool:entity/boss/xuan_ting_priest/kill
scoreboard players add @s brown_wool.xuan_ting_priest.end 1


execute if score @s brown_wool.xuan_ting_priest.end matches 202 run summon item ~ ~ ~ {Item:{id:dragon_breath,components:{item_name:{"translate":"item.brown_wool.thunder_source_essence","italic":false,"color":"aqua"},lore:[[{"translate":"item.brown_wool.thunder_source_essence.lore.1","italic":false,"color":"gray"}],[{"keybind":"key.use","italic":false,"color":"yellow"},{"text":">","italic":false,"color":"white"},{"translate":"item.brown_wool.thunder_source_essence.lore.2","italic":false,"color":"aqua"}],[{"translate":"item.brown_wool.thunder_source_essence.lore.3","italic":false,"color":"red"}],[{"translate":"item.brown_wool.thunder_source_essence.lore.4","italic":false,"color":"red"}]],food:{nutrition:0,saturation:0,can_always_eat:1b},consumable:{consume_seconds:0.05},use_cooldown:{seconds:10},custom_data:{brown_wool.thunder_source_essence:1}}}}
execute if score @s brown_wool.xuan_ting_priest.end matches 202 run kill @e[type=marker,tag=brown_wool.xuan_ting_priest.end1]
execute if score @s brown_wool.xuan_ting_priest.end matches 202.. run kill @s




