#> assist:jump_pad/cloud

scoreboard players set $active assist.jump_pad 0
execute at @a[tag=assist.jump_pad.safe_fall] store success score $active assist.jump_pad run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if score $active assist.jump_pad matches 1.. run schedule function assist:jump_pad/cloud 1t
