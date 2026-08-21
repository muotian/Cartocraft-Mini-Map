# 執行者、執行位置是玩家
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{coal: 1b}}] run function mini_light:weapons/candle/coal/weakness
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{blaze: 1b}}] run function mini_light:weapons/candle/blaze/four
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{emerald: 1b}}] run function mini_light:weapons/candle/emerald/four
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{redstone: 1b}}] run function mini_light:weapons/redstone/laser {target:"@e[type=#mini_light:mobs, type=!player,distance=..15,limit=3,sort=nearest]"}
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{amethyst: 1b}}] run function mini_light:weapons/amethyst/burst {target:"@e[type=#mini_light:mobs,tag=attacked]"}
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{soul: 1b}}] run function mini_light:weapons/candle/soul/cast
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{soul: 1b}}] run function mini_light:weapons/candle/soul/cast
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{gunpowder: 1b}}] run function mini_light:weapons/candle/gunpowder/knockback