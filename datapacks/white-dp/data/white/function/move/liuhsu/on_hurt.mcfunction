
execute if score @s white.move.liuhsu.cd matches 1.. run scoreboard players set @s white.move.liuhsu.cd 200
execute if score @s white.move.liuhsu.cd matches 1.. run return fail

scoreboard players set @s white.move.liuhsu.cd 200
effect give @s resistance 5 0 false
effect give @s speed 5 0 false
effect give @a[predicate=white:move/liuhsu/liu,limit=1] absorption infinite 0 true

# fx
particle dust{color:[0.620,0.694,1.000],scale:1.25} ~ ~1 ~ 0.3 0.6 0.3 0 40 force
playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 2