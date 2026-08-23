
# 執行位置：同上

rotate @s facing entity @p[tag=brown_wool.xuan_ting_priest.player]

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} run kill @s

