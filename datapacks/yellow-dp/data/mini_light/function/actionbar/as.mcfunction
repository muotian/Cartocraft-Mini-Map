# 執行者是玩家
execute if items entity @s weapon.mainhand *[custom_data~{frame:{lantern:1b}}] run function mini_light:actionbar/lantern
execute if items entity @s weapon.mainhand *[custom_data~{frame:{lantern:1b, golden:1b}}] run function mini_light:actionbar/golden_lantern
execute if items entity @s weapon.mainhand *[custom_data~{frame:{candle:1b}}] run function mini_light:actionbar/candle
execute if items entity @s weapon.mainhand *[custom_data~{frame:{candle:1b,candlestick:1b}}] run function mini_light:actionbar/candlestick