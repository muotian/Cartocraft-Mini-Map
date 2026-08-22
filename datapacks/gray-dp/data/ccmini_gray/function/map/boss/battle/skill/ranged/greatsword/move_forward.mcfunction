tp @s ^ ^ ^0.8
execute positioned ~-0.75 ~-0.5 ~-0.75 as @a[dx=0.5,dy=0,dz=0.5] if score @s gray.gopr.invincibility.frames matches 1.. unless score @s gray.gopr.invincibility.frames.additional matches 4.. run function ccmini_gray:system/dodge_success


execute positioned ~-0.75 ~-0.5 ~-0.75 as @a[dx=0.5,dy=0,dz=0.5,nbt={DeathTime:0s},tag=!gray.boss.hitbox] unless score @s gray.gopr.invincibility.frames matches 1.. unless score @s gray.gopr.invincibility.frames.additional matches 1.. run damage @s 10 ccmini_gray:physical_damage by @e[type=parched,tag=gray.boss.hitbox,limit=1]
execute positioned ~-0.75 ~-0.5 ~-0.75 as @e[dx=0.5,dy=0,dz=0.5,nbt={DeathTime:0s},type=!armor_stand,tag=!gray.boss.hitbox] unless score @s gray.gopr.invincibility.frames matches 1.. unless score @s gray.gopr.invincibility.frames.additional matches 1.. run damage @s[type=!player] 10 ccmini_gray:physical_damage by @e[type=parched,tag=gray.boss.hitbox,limit=1]





