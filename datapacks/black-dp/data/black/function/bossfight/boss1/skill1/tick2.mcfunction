#icebird.b1s1
execute if entity @s[tag=ewe] run return fail
execute if score $difficulty icebird.core matches 3 if entity @n[tag=icebird.boss1,dx=0,dy=0,dz=0] run function black:bossfight/boss1/skill1/explode
scoreboard players add @s icebird.core 1
scoreboard players add @s icebird.boss1 1
data modify entity @s[scores={icebird.core=1}] transformation.scale set value [1.65f,1.65f,1.65f]
data modify entity @s[scores={icebird.core=25}] transformation.scale set value [2f,2f,2f]
scoreboard players set @s[scores={icebird.core=26..}] icebird.core -15
#execute at @s[tag=icebird.b1s1_fake] run particle dust{color:[0.780,0.341,1.000],scale:1} ^ ^ ^0.15 0.25 0.25 0.25 0 10 force
#execute at @s[tag=icebird.b1s1_real] run particle dust{color:[0.937,1.000,0.369],scale:1} ^ ^ ^0.15 0.25 0.25 0.25 0 10 force

execute as @s[tag=icebird.b1s1_fake] if entity @a[tag=black.real,dx=0,dy=0,dz=0] run function black:bossfight/boss1/skill1/vanish
execute as @s[tag=icebird.b1s1_fake] as @a[tag=black.fake,dx=0,dy=0,dz=0] run function black:bossfight/boss1/skill1/damage

execute as @s[tag=icebird.b1s1_real] if entity @a[tag=black.fake,dx=0,dy=0,dz=0] run function black:bossfight/boss1/skill1/vanish
execute as @s[tag=icebird.b1s1_real] as @a[tag=black.real,dx=0,dy=0,dz=0] run function black:bossfight/boss1/skill1/damage

execute if score $difficulty icebird.core matches 1..2 run tp @s ^ ^ ^0.15
execute if score $difficulty icebird.core matches 3 run tp @s[tag=icebird.b1s1_hard_orb] ^ ^ ^0.15
execute if score $difficulty icebird.core matches 3 run tp @s[scores={icebird.boss1=..160},tag=!icebird.b1s1_hard_orb] ^ ^ ^0.15
execute if score $difficulty icebird.core matches 3 run tp @s[scores={icebird.boss1=161..},tag=!icebird.b1s1_hard_orb] ^ ^ ^-0.15
execute if score $difficulty icebird.core matches 1..2 if score $b1s1.rng3 icebird.boss1 matches 2 if score @s icebird.boss1 matches 159 store result entity @s Rotation[0] float 1 run random value 0..360

execute if score $difficulty icebird.core matches 1..2 run kill @s[scores={icebird.boss1=260..}]
execute if score $difficulty icebird.core matches 3 run kill @s[scores={icebird.boss1=320..}]