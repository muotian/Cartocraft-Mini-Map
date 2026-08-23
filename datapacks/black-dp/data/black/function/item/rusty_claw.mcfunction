effect give @e[type=#minecraft:hostile,distance=..8] weakness 10 1 false
effect give @e[type=#minecraft:hostile,distance=..8] slowness 10 1 false
execute as @e[type=#minecraft:hostile,distance=..8] run attribute @s armor modifier add black.claw_debuff -0.12 add_multiplied_total
execute as @e[type=#minecraft:hostile,distance=..8] run attribute @s armor_toughness modifier add black.claw_debuff -0.12 add_multiplied_total
execute rotated ~ 0 positioned ~ ~1 ~ run function black:bossfight/boss1/skill4/explode_particle {particle:wax_on,speed:0.0012}
playsound minecraft:item.axe.wax_off block @a[distance=..10] ~ ~ ~ 2 1