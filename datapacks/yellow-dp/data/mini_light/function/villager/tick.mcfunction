execute as @e[tag=mini_light.torch_villager.marker, type=marker] at @s run function mini_light:villager/summon_torch_villager
execute as @e[tag=mini_light.lantern_villager.marker, type=marker] at @s run function mini_light:villager/summon_lantern_villager
execute as @e[tag=mini_light.candle_villager.marker, type=marker] at @s run function mini_light:villager/summon_candle_villager

kill @e[tag=mini_light.torch_villager.marker, type=marker]
kill @e[tag=mini_light.lantern_villager.marker, type=marker]
kill @e[tag=mini_light.candle_villager.marker, type=marker]