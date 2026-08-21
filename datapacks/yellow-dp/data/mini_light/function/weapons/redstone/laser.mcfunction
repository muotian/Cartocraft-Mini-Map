# 執行者、執行位置是玩家 或是紅石燈籠
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.2 1.5
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
$tag $(target) add laser_target
# 傳導火焰
execute if entity @e[type=#mini_light:mobs,tag=laser_target, predicate=mini_light:weapons/on_fire] as @e[type=#mini_light:mobs,tag=laser_target, predicate=!mini_light:weapons/on_fire] run data modify entity @s Fire set value 160s
execute if entity @e[tag=this] as @e[type=#mini_light:mobs,tag=laser_target] run damage @s 2 mini_light:player_laser by @n[tag=this]
execute unless entity @e[tag=this] as @e[type=#mini_light:mobs,tag=laser_target] run damage @s 4 mini_light:player_laser
execute positioned ~ ~1 ~ facing entity @e[type=#mini_light:mobs,tag=laser_target] eyes run function mini_light:weapons/redstone/recursion_effect
tag @e[tag=laser_target] remove laser_target