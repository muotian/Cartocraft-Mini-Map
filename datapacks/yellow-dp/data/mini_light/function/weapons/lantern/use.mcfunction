advancement revoke @s only mini_light:weapons/lantern/use

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{frame:{golden:1b}}] unless score @s mini_light.lantern_energy matches 2.. run return fail
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{frame:{golden:1b}}] unless score @s mini_light.lantern_energy matches 3 run return fail

execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{coal: 1b}}] run function mini_light:weapons/lantern/coal/summon_lantern
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{blaze: 1b}}] run function mini_light:weapons/lantern/blaze/summon_totem
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{emerald: 1b}}] run function mini_light:weapons/lantern/emerald/summon_totem
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{redstone: 1b}}] run function mini_light:weapons/lantern/redstone/summon_totem
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{amethyst: 1b}}] run function mini_light:weapons/lantern/amethyst/cast
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{soul: 1b}}] run function mini_light:weapons/lantern/soul/cast
execute if items entity @s weapon.mainhand armadillo_scute[minecraft:custom_data~{fuel:{gunpowder: 1b}}] anchored eyes run function mini_light:weapons/lantern/gunpowder/cast

scoreboard players set @s mini_light.lantern_energy 0