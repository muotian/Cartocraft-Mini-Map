
execute if score @s white.move.liuhsu.cd matches 1.. run scoreboard players set @s white.move.liuhsu.cd 200
execute if score @s white.move.liuhsu.cd matches 1.. run return fail

scoreboard players set @s white.move.liuhsu.cd 200
effect give @s strength 5 0 false
effect give @s haste 5 0 false
effect give @a[predicate=white:move/liuhsu/hsu,limit=1] absorption infinite 0 true

# fx
particle dust{color:[1.000,0.490,0.490],scale:1.25} ~ ~1 ~ 0.3 0.6 0.3 0 40 force
playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 1 1
playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 2