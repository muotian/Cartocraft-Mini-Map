#
effect give @s invisibility infinite 0 true

particle dust_color_transition{from_color:[0.459,0.098,1.000],to_color:[0.098,0.851,1.000],scale:1} ~ ~ ~ .1 .1 .1 0 2 normal
particle dust_color_transition{from_color:[0.800,0.835,1.000],to_color:[0.702,0.000,1.000],scale:2} ~ ~ ~ 0 0 0 0 1 normal

# damage
execute as @a[predicate=pink:hurt] on attacker at @s if entity @s[tag=pink.gravity.vex] run function pink:monster/gravity/vex_hit

# die
execute unless entity @e[tag=pink.gravity] run kill @s

