particle minecraft:explosion ~ ~.5 ~ 0 0 0 0 1 force
execute as @s[tag=icebird.b1s4_real] run particle dust{color:[0.937,1.000,0.369],scale:0.77} ~ ~1 ~ 0.2 0.5 0.2 0 5 force
execute as @s[tag=icebird.b1s4_fake] run particle dust{color:[0.780,0.341,1.000],scale:0.77} ~ ~1 ~ 0.2 0.5 0.2 0 5 force
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1.8
execute on passengers run kill @s
kill @s