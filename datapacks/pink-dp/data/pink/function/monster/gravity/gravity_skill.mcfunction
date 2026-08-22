#
kill @e[tag=!pink_mobs,type=evoker_fangs,distance=..20]

#
particle dust_color_transition{from_color:[0.627,0.341,1.000],to_color:[0.078,0.816,1.000],scale:1.5} ~ ~.2 ~ 3 .1 3 0 250
particle dust{color:[0.639,0.020,1.000],scale:2} ~ ~.2 ~ 3 .1 3 0 250
particle dust_color_transition{from_color:[0.000,1.000,1.000],to_color:[0.729,0.631,1.000],scale:2.8} ~ ~1 ~ 1.3 1.3 1.3 0 120
particle entity_effect{color:[0.596,0.071,1.000,1.00]} ~ ~1 ~ 1.3 1.3 1.3 1 120 normal
particle minecraft:enchant ~ ~1 ~ 0 0 0 5 200

effect give @a[distance=..7] minecraft:slowness 8 1
effect give @a[distance=..7] minecraft:weakness 8 1
effect give @a[distance=..7] minecraft:poison 8 0
effect give @a[distance=..7] minecraft:night_vision 8 0

