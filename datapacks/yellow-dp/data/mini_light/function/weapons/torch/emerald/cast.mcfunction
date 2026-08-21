execute if items entity @s weapon.mainhand *[minecraft:custom_data~{frame:{bone:1b}}] if predicate {"condition": "random_chance","chance": 0.35} run return run function mini_light:weapons/torch/emerald/effect
execute if predicate {"condition": "random_chance","chance": 0.25} run function mini_light:weapons/torch/emerald/effect



