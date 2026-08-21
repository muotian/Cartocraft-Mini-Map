# 執行者、執行位置是鉤子
playsound entity.elder_guardian.curse master @a[dx=0,dy=0,dz=0] ~ ~ ~ 0.3 1
playsound minecraft:block.anvil.land master @a[distance=..6] ~ ~ ~ 0.3 1.5
particle campfire_cosy_smoke ~ ~ ~ .3 .3 .3 .1 15
damage @a[dx=0,dy=0,dz=0,limit=1] 7 mini_light:dark_chain
effect give @a[dx=0,dy=0,dz=0,limit=1] slowness 2 3 true
effect give @a[dx=0,dy=0,dz=0,limit=1] weakness 3 0 true
effect give @a[dx=0,dy=0,dz=0,limit=1] mining_fatigue 3 0 true


kill @s




