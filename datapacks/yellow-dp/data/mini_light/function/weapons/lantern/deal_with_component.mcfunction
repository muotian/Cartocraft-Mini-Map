# 執行者是拿燈籠的玩家
execute if items entity @s weapon.mainhand *[!consumable] run function mini_light:weapons/lantern/add_component
execute if items entity @s weapon.mainhand *[consumable] run function mini_light:weapons/lantern/remove_component