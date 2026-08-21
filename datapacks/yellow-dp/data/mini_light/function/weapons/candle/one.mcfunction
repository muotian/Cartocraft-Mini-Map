# 執行者、執行位置是玩家
#execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{coal: 1b}}] run say coal1
#execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{blaze: 1b}}] run say blaze1
#execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{emerald: 1b}}] run say emerald1
#execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{redstone: 1b}}] run say redstone1
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{amethyst: 1b}}] run function mini_light:weapons/candle/amethyst/123
#execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{soul: 1b}}] at @n[tag=attacked] run say soul1
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{gunpowder: 1b}}] run function mini_light:weapons/candle/gunpowder/summon_ghost
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{gunpowder: 1b}}] run function mini_light:weapons/candle/gunpowder/knockback