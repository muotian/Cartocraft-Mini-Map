# 幻影雷刃
execute if score @s brown_wool.phantom_lightning_blade.cd matches 1.. at @s run function brown_wool:item/weapon/phantom_lightning_blade/player2

execute if score @s brown_wool.phantom_lightning_blade1 matches 1.. at @s run function brown_wool:item/weapon/phantom_lightning_blade/player3
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.phantom_lightning_blade": true}}}} run advancement revoke @s only brown_wool:brown_wool.phantom_lightning_blade

