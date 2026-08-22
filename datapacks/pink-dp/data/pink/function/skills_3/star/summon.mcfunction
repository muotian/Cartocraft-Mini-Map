#
scoreboard players remove @s pink.mana_v 6

#
execute anchored eyes rotated ~ 0 positioned ^ ^-.5 ^1.5 rotated ~180 0 run function animated_java:pink_star_skill3_1/summon {args: {animation: '1', start_animation: true}}

playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1 1.3
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1 1.3