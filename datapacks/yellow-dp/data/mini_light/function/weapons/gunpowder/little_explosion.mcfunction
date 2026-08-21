# 執行者是玩家 執行位置是爆炸發生的位置

tag @s add this

function mini_light:weapons/gunpowder/calculate_damage
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#mini_light:mobs,type=!player,dx=0.5,dy=0.5,dz=0.5] run function mini_light:weapons/gunpowder/_damage with storage mini_light:weapons/damage value
execute if entity @s[type=!player] positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#mini_light:mobs,type=!player,dx=0.5,dy=0.5,dz=0.5] run function mini_light:weapons/gunpowder/_damage2 with storage mini_light:weapons/damage value
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#mini_light:mobs,dx=0.5,dy=0.5,dz=0.5] run data modify entity @s Motion[1] set value 0.65d

tag @s remove this

particle explosion ~ ~ ~ 1360 0 6049 0.001 0
particle explosion ~ ~ ~ 1751 0 6137 0.001 0

# 大
execute facing entity @e[sort=random, limit=2] eyes run particle explosion ^ ^ ^0.3 1360 0 6049 0.001 0
# 中
execute facing entity @e[sort=random, limit=2] eyes run particle explosion ^ ^ ^0.3 1651 0 6137 0.001 0
execute facing entity @e[sort=random, limit=2] eyes run particle explosion ^ ^ ^0.6 1651 0 6137 0.001 0
# 小
execute facing entity @e[sort=random, limit=3] eyes run particle explosion ^ ^ ^0.4 1751 0 6137 0.001 0
execute facing entity @e[sort=random, limit=3] eyes run particle explosion ^ ^ ^0.2 1751 0 6137 0.001 0
execute facing entity @e[sort=random, limit=3] eyes run particle explosion ^ ^ ^0.7 1751 0 6137 0.001 0

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 1.7
