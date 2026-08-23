#執行者是b4s3
scoreboard players add @s icebird.boss1 1
tp @s ~ ~ ~ ~13 ~
#real
execute if score @s icebird.core matches 1 if entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^ ^ ^2.2 0 2 0 0 0 force
execute if score @s icebird.core matches 1 if entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^ ^ ^-2.2 0 2 0 0 0 force
execute if score @s icebird.core matches 1 if entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^-2.2 ^ ^ 0 2 0 0 0 force
execute if score @s icebird.core matches 1 if entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^2.2 ^ ^ 0 2 0 0 0 force

execute if score @s icebird.core matches 1 unless entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^ ^ ^2.2 0 2 0 0 5 force
execute if score @s icebird.core matches 1 unless entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^ ^ ^-2.2 0 2 0 0 5 force
execute if score @s icebird.core matches 1 unless entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^-2.2 ^ ^ 0 2 0 0 5 force
execute if score @s icebird.core matches 1 unless entity @p[distance=..2.2,tag=black.fake] run particle dust_color_transition{from_color:[0.969,1.000,0.000],to_color:[1.000,0.961,0.600],scale:2} ^2.2 ^ ^ 0 2 0 0 5 force
#fake
execute if score @s icebird.core matches 2 if entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^ ^ ^2.2 0 2 0 0 0 force
execute if score @s icebird.core matches 2 if entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^ ^ ^-2.2 0 2 0 0 0 force
execute if score @s icebird.core matches 2 if entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^-2.2 ^ ^ 0 2 0 0 0 force
execute if score @s icebird.core matches 2 if entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^2.2 ^ ^ 0 2 0 0 0 force

execute if score @s icebird.core matches 2 unless entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^ ^ ^2.2 0 2 0 0 5 force
execute if score @s icebird.core matches 2 unless entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^ ^ ^-2.2 0 2 0 0 5 force
execute if score @s icebird.core matches 2 unless entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^-2.2 ^ ^ 0 2 0 0 5 force
execute if score @s icebird.core matches 2 unless entity @p[distance=..2.2,tag=black.real] run particle dust_color_transition{from_color:[0.631,0.000,1.000],to_color:[0.733,0.471,1.000],scale:2} ^2.2 ^ ^ 0 2 0 0 5 force

execute if score @s icebird.core matches 1 unless entity @p[distance=..2.2,tag=black.fake] run particle flame ~ ~ ~ 0.8 0.05 0.8 0.04 30 force
execute if score @s icebird.core matches 2 unless entity @p[distance=..2.2,tag=black.real] run particle flame ~ ~ ~ 0.8 0.05 0.8 0.04 30 force

execute if score @s icebird.core matches 1 if score @s icebird.boss1 matches 100 if entity @p[distance=..2.2,tag=black.fake] run execute as @p[distance=..2.2] run function black:bossfight/boss1/skill2/damage_single
execute if score @s icebird.core matches 2 if score @s icebird.boss1 matches 100 if entity @p[distance=..2.2,tag=black.real] run execute as @p[distance=..2.2] run function black:bossfight/boss1/skill2/damage_single

execute if score @s icebird.core matches 1 if score @s icebird.boss1 matches 100 unless entity @p[distance=..2.2,tag=black.fake] run execute as @a run function black:bossfight/boss1/skill2/damage_all
execute if score @s icebird.core matches 2 if score @s icebird.boss1 matches 100 unless entity @p[distance=..2.2,tag=black.real] run execute as @a run function black:bossfight/boss1/skill2/damage_all

kill @s[scores={icebird.boss1=101..}]