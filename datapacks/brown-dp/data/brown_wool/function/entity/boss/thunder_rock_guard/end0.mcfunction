


tag @s remove brown_wool.thunder_rock_guard.terrain_2
tag @a remove brown_wool.thunder_rock_guard.player
scoreboard players reset @a brown_wool.thunder_rock_guard.playsound
stopsound @a * brown_wool:custom.kaiji_dance_with_the_devil
bossbar set brown_wool.thunder_rock_guard players
bossbar set brown_wool.thunder_rock_guard visible false
execute unless score @s brown_wool.thunder_rock_guard.end matches 1.. at @s run function brown_wool:entity/boss/thunder_rock_guard/terrain0
execute unless score @s brown_wool.thunder_rock_guard.end matches 1.. at @s run summon marker ~ ~-0.4 ~16 {Tags:["brown_wool.thunder_rock_guard.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.thunder_rock_guard.end matches 1.. at @s run summon marker ~ ~-0.4 ~-16 {Tags:["brown_wool.thunder_rock_guard.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.thunder_rock_guard.end matches 1.. at @s run summon marker ~16 ~-0.4 ~ {Tags:["brown_wool.thunder_rock_guard.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.thunder_rock_guard.end matches 1.. at @s run summon marker ~-16 ~-0.4 ~ {Tags:["brown_wool.thunder_rock_guard.end1"],Rotation:[0,0]}
function brown_wool:entity/boss/thunder_rock_guard/kill
scoreboard players add @s brown_wool.thunder_rock_guard.end 1


execute if score @s brown_wool.thunder_rock_guard.end matches 202 run summon item ~ ~ ~ {Item:{id:netherite_sword,components:{item_name:{"translate":"item.brown_wool.thunder_rock_fist_blade","italic":false,"color":"aqua"},lore:[[{"translate":"item.brown_wool.thunder_rock_fist_blade.lore.1","italic":false,"color":"gray"}],[{"translate":"item.brown_wool.long_press","italic":false,"color":"yellow"},{"keybind":"key.use","italic":false,"color":"yellow"},{"text":">","italic":false,"color":"white"},{"translate":"item.brown_wool.thunder_rock_fist_blade.lore.2","italic":false,"color":"aqua"}],[{text:""}],[{"translate":"item.brown_wool.lightning_crystal.reinforce","italic":false,"color":"light_purple"},{"text":"*3~22","italic":false,"color":"light_purple"},{"text":"(","italic":false,"color":"gray"},{"translate":"item.brown_wool.weapon_offhand","italic":false,"color":"gray"},{"text":"):","italic":false,"color":"gray"}],[{"translate":"item.brown_wool.thunder_rock_fist_blade.lore.3","italic":false,"color":"light_purple"}],[{"translate":"item.brown_wool.thunder_rock_fist_blade.lore.4","italic":false,"color":"aqua"}]],enchantments:{smite:3,unbreaking:2},food:{nutrition:0,saturation:0,can_always_eat:1b},consumable:{consume_seconds:999999,animation:none,sound:"block.dry_grass.ambient",has_consume_particles:0b},custom_data:{brown_wool.thunder_rock_fist_blade:1}}}}
execute if score @s brown_wool.thunder_rock_guard.end matches 202 run kill @e[type=marker,tag=brown_wool.thunder_rock_guard.end1]
execute if score @s brown_wool.thunder_rock_guard.end matches 202.. run kill @s




