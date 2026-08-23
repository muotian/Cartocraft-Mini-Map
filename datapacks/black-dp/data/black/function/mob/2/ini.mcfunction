rotate @s facing entity @p feet
particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.07 20 force
execute anchored eyes run summon marker ~ ~1.5 ~ {Tags:["black.mob2_lazer"]}
playsound minecraft:block.respawn_anchor.charge block @a[distance=..10] ~ ~ ~ 2 0
execute at @p[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["black.mob2_lazer.2"]}
execute on vehicle run effect give @s glowing 3 0 false