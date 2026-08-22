tag @s add gray.boss.battle.sandsword.hurt_source
execute unless block ~ ~ ~ #ccmini_gray:transparent run kill @s
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~ #ccmini_gray:transparent run kill @s
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ccmini_gray:transparent run kill @s
tp ^ ^ ^2.5
execute positioned ^ ^ ^-0.5 run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/damage_distribute
execute positioned ^ ^ ^0.5 run function ccmini_gray:map/boss/battle/skill/ranged/sandsword/damage_distribute

execute positioned ^ ^ ^-0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0] if score @s gray.gopr.invincibility.frames matches 1.. unless score @s gray.gopr.invincibility.frames.additional matches 4.. run function ccmini_gray:system/dodge_success