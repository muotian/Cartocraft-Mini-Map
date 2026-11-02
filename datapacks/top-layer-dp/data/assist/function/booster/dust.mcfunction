scoreboard players set $active assist.booster 0
execute at @a[scores={assist.booster.due_time=1..}] store success score $active assist.booster run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 1 3 force
execute if score $active assist.booster matches 1.. run schedule function assist:booster/dust 1t
