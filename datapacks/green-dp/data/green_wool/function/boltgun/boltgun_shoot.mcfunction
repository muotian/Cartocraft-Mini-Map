summon marker ~ ~ ~ {Tags:["green_wool.boltgun_bullet"]}
execute at @e[dx=0.1,dy=0.1,dz=0.1,tag=!green_wool.boltgun_bullet,type=!interaction,type=!player,type=!item] as @e[distance=..2] run damage @s 8 green_wool:boltgun_hit by @s
execute as @e[dx=0.1,dy=0.1,dz=0.1,tag=!green_wool.boltgun_bullet,type=!interaction,type=!player,type=!item] run playsound minecraft:entity.generic.explode block @a ~ ~ ~
execute if entity @e[dx=0.1,dy=0.1,dz=0.1,tag=!green_wool.boltgun_bullet,type=!interaction,type=!player] run particle explosion
kill @e[tag=green_wool.boltgun_bullet]
#particle firework ~ ~ ~
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ air run particle explosion
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ air run playsound minecraft:entity.dragon_fireball.explode
execute unless entity @e[dx=0.1,dy=0.1,dz=0.1,tag=!green_wool.boltgun_bullet,type=!interaction,type=!player,type=!item] positioned ^ ^0.001 ^0.2 if entity @p[distance=..100] if block ~ ~ ~ air run function green_wool:boltgun/boltgun_shoot