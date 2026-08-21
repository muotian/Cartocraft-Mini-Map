
execute if score @s white.move.ink_bottle.cd matches 1.. run return fail

scoreboard players set @s white.move.ink_bottle.cd 240
execute store success score #is_double white.main run function white:move/ink_bottle/double/use
execute anchored eyes positioned ^ ^ ^0.5 run function white:move/ink_bottle/bottle/use

# fx
playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0