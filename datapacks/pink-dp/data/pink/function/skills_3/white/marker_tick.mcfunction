# resistance
effect give @a[distance=..10] resistance 2 100 true

# white marker regeneration
effect give @a[distance=..10,scores={pink.white.protect_cd=1..239},predicate=!pink:effect/regeneration] regeneration 5 1 false
effect give @a[distance=..10,scores={pink.white.protect_cd=1..239},predicate=!pink:effect/strength] strength 3 0 false

#
execute as @a[scores={pink.white.skill3.damage=1..}] run function pink:skills_3/white/damage_operation

execute as @e[distance=..10,type=!#pink:object,type=!player] run function pink:skills_3/white/effect

