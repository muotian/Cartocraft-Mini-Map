execute as @s[tag=icebird.b1s5_real] run particle flash{color:[1,1,0.033,1.00]} ^6 ^1.5 ^6 1 1 1 1 10 force
execute as @s[tag=icebird.b1s5_fake] run particle flash{color:[0.867,0.000,1.000,1.00]} ^6 ^1.5 ^6 1 1 1 1 10 force
execute as @s[tag=icebird.b1s5_fake] as @a[tag=black.real,dx=12.5,dy=5,dz=12.5] run function black:bossfight/boss1/skill5/correct_damage
execute as @s[tag=icebird.b1s5_fake] as @a[tag=!black.real,dx=12.5,dy=5,dz=12.5] run function black:bossfight/boss1/skill5/wrong_damage
execute as @s[tag=icebird.b1s5_real] as @a[tag=black.fake,dx=12.5,dy=5,dz=12.5] run function black:bossfight/boss1/skill5/correct_damage
execute as @s[tag=icebird.b1s5_real] as @a[tag=!black.fake,dx=12.5,dy=5,dz=12.5] run function black:bossfight/boss1/skill5/wrong_damage
playsound minecraft:entity.warden.sonic_boom block @a[dx=12.5,dy=5,dz=12.5] ~ ~ ~ 1.5 1.7
