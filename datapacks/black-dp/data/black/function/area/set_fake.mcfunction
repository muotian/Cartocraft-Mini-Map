tag @s add black.fake_mob
team join icebird.purple @s
tag @s add interrupt.immune
effect give @s glowing infinite 0 true
effect give @s[tag=!icebird.spell_cast] resistance infinite 1 true
effect give @s[tag=icebird.spell_cast] resistance infinite 2 true

attribute @s[tag=!icebird.spell_cast] armor modifier add black.element 0.2 add_multiplied_total
attribute @s[tag=!icebird.spell_cast] movement_speed modifier add black.element 0.1 add_multiplied_total
attribute @s[tag=!icebird.spell_cast] attack_damage modifier add black.element 0.1 add_multiplied_total