
execute if score @s white.move.temptation.cd matches 1.. run return fail

scoreboard players set @s white.move.temptation.cd 240
execute anchored eyes positioned ^ ^-0.5 ^ run function white:move/temptation/frisbee/use

# fx
playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0