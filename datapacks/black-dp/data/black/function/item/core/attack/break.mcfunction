attribute @s movement_speed modifier add black.break -0.5 add_value
effect clear @s resistance
playsound minecraft:block.respawn_anchor.deplete block @a[distance=..10] ~ ~ ~ 1 1
particle minecraft:wax_off ~ ~1 ~ 0.25 0.5 0.25 0 100 force
tag @s remove interrupt.immune
function black:spell/cast/text_update
tag @s[tag=black.real_mob] remove black.real_mob
tag @s[tag=black.fake_mob] remove black.fake_mob
team join icebird.gray @s

attribute @s[tag=!icebird.spell_cast] armor modifier remove black.element
attribute @s[tag=!icebird.spell_cast] movement_speed modifier remove black.element
attribute @s[tag=!icebird.spell_cast] attack_damage modifier remove black.element