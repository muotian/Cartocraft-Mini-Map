# 幻影雷刃:技能
execute if score @s brown_wool.phantom_lightning_blade1 matches 1..60 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": false}}}} at @n[type=marker,tag=brown_wool.phantom_lightning_blade0,tag=!brown_wool.phantom_lightning_blade0.0] run tp @s ~ ~ ~
execute if score @s brown_wool.phantom_lightning_blade1 matches 1..60 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": false}}}} as @n[type=marker,tag=brown_wool.phantom_lightning_blade0,tag=!brown_wool.phantom_lightning_blade0.0] run tag @s add brown_wool.phantom_lightning_blade0.0

execute if score @s brown_wool.phantom_lightning_blade1 matches 1..60 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": false}}}} run scoreboard players set @s brown_wool.phantom_lightning_blade.cd 360


execute if score @s brown_wool.phantom_lightning_blade1 matches 61 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": true}}}} at @n[type=marker,tag=brown_wool.phantom_lightning_blade0,tag=!brown_wool.phantom_lightning_blade0.0] run tp @s ~ ~ ~
execute if score @s brown_wool.phantom_lightning_blade1 matches 61 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": true}}}} as @n[type=marker,tag=brown_wool.phantom_lightning_blade0,tag=!brown_wool.phantom_lightning_blade0.0] run tag @s add brown_wool.phantom_lightning_blade0.0

execute if score @s brown_wool.phantom_lightning_blade1 matches 61 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": true}}}} run scoreboard players set @s brown_wool.phantom_lightning_blade.cd 360


execute if score @s brown_wool.phantom_lightning_blade1 matches 61 if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": true}}}} run scoreboard players reset @s brown_wool.phantom_lightning_blade1
execute if score @s brown_wool.phantom_lightning_blade1 matches 1.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": false}}}} run scoreboard players reset @s brown_wool.phantom_lightning_blade1

