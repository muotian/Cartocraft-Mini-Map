execute unless entity @a[distance=..32] run function icer:mini_boss/cherub/reset

data modify entity @s angry_at set from entity @p UUID

execute store result score @s icer.cherub_health run data get entity @s Health

execute if score @s icer.cherub_health matches ..160 run function icer:mini_boss/cherub/summon_sword

data remove entity @s Motion

tp @s ~ ~ ~ facing entity @p

execute as @e[tag=icer.pyrosword] at @s run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.05 1 force