advancement revoke @s only pink:armor/black/kill

#
effect give @s strength 4 0 false

particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.310,0.000,0.000],scale:1.2} ~ ~1.5 ~ .5 .8 .5 0 15 normal
particle minecraft:angry_villager ~ ~ ~ .3 .3 .3 0 3

playsound minecraft:entity.warden.attack_impact player @s ~ ~ ~ 0.7 1
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1