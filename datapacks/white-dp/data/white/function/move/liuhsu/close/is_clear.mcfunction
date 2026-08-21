
execute unless items entity @s armor.chest *[custom_data~{white:{item:liuhsu}}] run return 1
execute unless entity @a[predicate=white:move/liuhsu,distance=0.01..12,limit=1] run return 1