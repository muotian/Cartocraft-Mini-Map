execute if score @s wool_purple.isaiah_cd.1 matches 1..600 run title @s actionbar [{"translate":"item.isaiah.lore.7","color":"white"},{"translate":"item.isaiah.lore.8","color":"#d0a6e8"},{"translate":"item.isaiah.lore.9","color":"white"},{"translate":"ability_cd.1","color":"white"},{"score":{"name":"@s","objective":"wool_purple.isaiah.sec.1"}},{"translate":"ability_cd.2","color":"white"}]
execute unless score @s wool_purple.isaiah_cd.1 matches 0 run return fail

execute as @s run scoreboard players set @s wool_purple.isaiah_cd.1 800

bossbar add wool_purple.isaiah.duration [{"atlas": "items", "sprite": "wool_purple:item/amethyst_shard_left", "color":"white"}, {"text": " "}, {"translate": "ability.isaiah.duration", "color": "#d0a6e8"}, {"text": " "}, {"atlas": "items", "sprite": "wool_purple:item/amethyst_shard_right", "color":"white"}]
bossbar set wool_purple.isaiah.duration style notched_20
bossbar set wool_purple.isaiah.duration color purple
bossbar set wool_purple.isaiah.duration max 200
bossbar set wool_purple.isaiah.duration value 200
bossbar set wool_purple.isaiah.duration players @s

tag @s add wool_purple.isaiah_ability_1
playsound minecraft:entity.elder_guardian.ambient player @a ~ ~ ~ 0.2 0.1

scoreboard players set @s wool_purple.isaiah_duration.1 200
