execute if score @s wool_purple.isaiah_cd.2 matches 1..1200 run title @s actionbar [{"translate":"item.isaiah.lore.18","color":"white"},{"translate":"item.isaiah.lore.19","color":"#a958d8"},{"translate":"item.isaiah.lore.20","color":"white"},{"translate":"ability_cd.1","color":"white"},{"score":{"name":"@s","objective":"wool_purple.isaiah.sec.2"}},{"translate":"ability_cd.2","color":"white"}]
execute unless score @s wool_purple.isaiah_cd.2 matches 0 run return fail

execute as @s run scoreboard players set @s wool_purple.isaiah_cd.2 1500

tag @s add wool_purple.isaiah_ability_2
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 2 1.2
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1.2 0.1
summon item_display ~ ~6.5 ~ {transformation:{left_rotation:[0.3536f,0.1464f,0.3536f,0.8536f],right_rotation:[0f,0f,0f,1f],translation:[-0.500066f,0.499934f,0.707106f],scale:[5f,5f,5f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;2080793942,-524468218,-1541115779,1949756395],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjOTg1YzAzOWQyYWExZDJiYmIzZGM5ZWRmODZkYzQzMmUzMTJmNGI3MjBkMGFiZGU0N2ViY2E3M2E2MTI5MCJ9fX0="}]}}},Tags:[wool_purple.isaiah_eye],Glowing:1b,teleport_duration:1}