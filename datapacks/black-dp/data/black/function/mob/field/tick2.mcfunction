execute if entity @n[type=skeleton,tag=black.field_cast,distance=..1.5] run scoreboard players add @s icebird.core 1
tp @s ~ ~ ~ ~2 ~
execute if score @s icebird.core matches 3 run data modify entity @s transformation.scale set value [20f,0.1f,20f]
execute if score @s icebird.core matches 3.. run effect give @a[distance=..8] minecraft:mining_fatigue 1 1 false
execute if score @s icebird.core matches 3.. run effect give @a[distance=..8] minecraft:slowness 1 1 false
execute unless entity @n[type=skeleton,tag=black.field_cast,distance=..1.5] run data modify entity @s interpolation_duration set value 10
execute unless entity @n[type=skeleton,tag=black.field_cast,distance=..1.5] run scoreboard players set @s[scores={icebird.core=1..}] icebird.core -1
execute unless entity @n[type=skeleton,tag=black.field_cast,distance=..1.5] run scoreboard players remove @s icebird.core 1
execute if score @s icebird.core matches -2 run data modify entity @s transformation.scale set value [1f,0.1f,1f]
$execute if score @s icebird.core matches 3.. rotated $(360) 0 run particle soul_fire_flame ^ ^ ^8 0 1 0 0 20 normal
$execute if score @s icebird.core matches 3.. rotated $(360) 0 run particle soul_fire_flame ^ ^ ^-8 0 1 0 0 20 normal
$execute if score @s icebird.core matches 3.. rotated $(360) 0 run particle soul_fire_flame ^8 ^ ^ 0 1 0 0 20 normal
$execute if score @s icebird.core matches 3.. rotated $(360) 0 run particle soul_fire_flame ^-8 ^ ^ 0 1 0 0 20 normal
kill @s[scores={icebird.core=-11}]