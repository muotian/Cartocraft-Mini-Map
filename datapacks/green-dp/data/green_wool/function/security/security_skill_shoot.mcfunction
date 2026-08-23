execute if entity @s[distance=..5] positioned ^ ^ ^0.1 if block ~ ~ ~ air run function green_wool:security/security_skill_shoot
particle dust{color:[1,0,0],scale:1} ~ ~ ~
execute as @e[dx=0,dy=0,dz=0,type=player] run damage @s 20 green_wool:laser