


tag @s remove brown_wool.cangting_general.terrain_2
tag @a remove brown_wool.cangting_general.player
scoreboard players reset @a brown_wool.cangting_general.playsound
stopsound @a * brown_wool:custom.makai_symphony_dragon_castle
bossbar set brown_wool.cangting_general players
bossbar set brown_wool.cangting_general visible false
execute unless score @s brown_wool.cangting_general.end matches 1.. at @s run function brown_wool:entity/boss/cangting_general/terrain0
execute unless score @s brown_wool.cangting_general.end matches 1.. at @s run summon marker ~ ~-0.4 ~16 {Tags:["brown_wool.cangting_general.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.cangting_general.end matches 1.. at @s run summon marker ~ ~-0.4 ~-16 {Tags:["brown_wool.cangting_general.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.cangting_general.end matches 1.. at @s run summon marker ~16 ~-0.4 ~ {Tags:["brown_wool.cangting_general.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.cangting_general.end matches 1.. at @s run summon marker ~-16 ~-0.4 ~ {Tags:["brown_wool.cangting_general.end1"],Rotation:[0,0]}
function brown_wool:entity/boss/cangting_general/kill
scoreboard players add @s brown_wool.cangting_general.end 1


execute if score @s brown_wool.cangting_general.end matches 202 run summon item ~ ~ ~ {Item:{id:netherite_sword,components:{item_name:{"translate":"item.brown_wool.cangting_zhenyue_spear","italic":false,"color":"aqua"},lore:[[{"translate":"item.brown_wool.cangting_zhenyue_spear.lore.1","italic":false,"color":"gray"}],[{"translate":"item.brown_wool.long_press","italic":false,"color":"yellow"},{"keybind":"key.use","italic":false,"color":"yellow"},{"text":">","italic":false,"color":"white"},{"translate":"item.brown_wool.cangting_zhenyue_spear.lore.2","italic":false,"color":"aqua"}],[{"keybind":"key.sneak","italic":false,"color":"yellow"},{"text":"+","italic":false,"color":"yellow"},{"translate":"item.brown_wool.long_press","italic":false,"color":"yellow"},{"keybind":"key.use","italic":false,"color":"yellow"},{"text":">","italic":false,"color":"white"},{"translate":"item.brown_wool.cangting_zhenyue_spear.lore.3","italic":false,"color":"aqua"}],[{"translate":"item.brown_wool.cangting_zhenyue_spear.lore.4","italic":false,"color":"gray"}],[{text:""}],[{"translate":"item.brown_wool.lightning_crystal.reinforce","italic":false,"color":"light_purple"},{"text":"*3~18","italic":false,"color":"light_purple"},{"text":"(","italic":false,"color":"gray"},{"translate":"item.brown_wool.weapon_offhand","italic":false,"color":"gray"},{"text":"):","italic":false,"color":"gray"}],[{"translate":"item.brown_wool.cangting_zhenyue_spear.lore.5","italic":false,"color":"light_purple"}],[{"translate":"item.brown_wool.cangting_zhenyue_spear.lore.6","italic":false,"color":"aqua"}]],attribute_modifiers:[{type:attack_damage,amount:8,slot:mainhand,operation:add_value,id:"1767162000010"},{type:attack_speed,amount:-3.2,slot:mainhand,operation:add_value,id:"1767162000011"}],enchantments:{sharpness:4,unbreaking:2},food:{nutrition:0,saturation:0,can_always_eat:1b},consumable:{consume_seconds:999999,animation:none,sound:"block.dry_grass.ambient",has_consume_particles:0b},custom_data:{brown_wool.cangting_zhenyue_spear:1},item_model:"minecraft:netherite_spear",swing_animation:{type:stab}}}}
execute if score @s brown_wool.cangting_general.end matches 202 run kill @e[type=marker,tag=brown_wool.cangting_general.end1]
execute if score @s brown_wool.cangting_general.end matches 202.. run kill @s




