# 執行者、執行位置是紫水晶烈焰神
execute on target run tag @s add mini_light.amethyst_envoy1.target
execute unless entity @e[tag=mini_light.amethyst_envoy1.target,distance=..20] run data modify entity @s angry_at set from entity @p[distance=..20] UUID
tag @e[tag=mini_light.amethyst_envoy1.target] remove mini_light.amethyst_envoy1.target