# 因為某些BUG的關係，所以必須用tick 來消除進度，確保1 tick 只會觸發一次
# 主要是因為橫掃之刃的劍氣會在一個tick之內多次觸發
#advancement revoke @s only mini_light:weapons/torch/hit

tag @s add this
execute at @s as @e[predicate=mini_light:monster/hurttime] if function mini_light:weapons/check_attacker run tag @s add attacked

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{coal: 1b}}] run function mini_light:weapons/torch/coal/cast
#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{blaze: 1b}}] run say blaze
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{emerald: 1b}}] run function mini_light:weapons/torch/emerald/cast
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{redstone: 1b}}] run function mini_light:weapons/torch/redstone/cast
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{amethyst: 1b}}] run function mini_light:weapons/torch/amethyst/cast
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{soul: 1b}}] run function mini_light:weapons/torch/soul/cast
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{fuel:{gunpowder: 1b}}] run function mini_light:weapons/torch/gunpowder/cast

execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{coal: 1b}, frame:{copper:1b}}] run function mini_light:weapons/torch/coal/cast
execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{blaze: 1b}, frame:{copper:1b}}] run data modify entity @n[tag=attacked] Fire set value 80s
execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{emerald: 1b}, frame:{copper:1b}}] run function mini_light:weapons/torch/emerald/cast
execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{redstone: 1b}, frame:{copper:1b}}] run function mini_light:weapons/torch/redstone/cast
execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{amethyst: 1b}, frame:{copper:1b}}] run function mini_light:weapons/torch/amethyst/cast
execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{soul: 1b}, frame:{copper:1b}}] run function mini_light:weapons/torch/soul/cast
execute if items entity @s weapon.offhand *[minecraft:custom_data~{fuel:{gunpowder: 1b}, frame:{copper:1b}}] run function mini_light:weapons/torch/gunpowder/cast

tag @e[tag=attacked] remove attacked
tag @s remove this