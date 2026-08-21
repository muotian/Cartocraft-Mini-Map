
execute if score @s white.move.goodnight.duration matches 100.. run function white:move/goodnight/dizzy/clear

# fx
scoreboard players operation #mod white.main = @s white.move.goodnight.duration
scoreboard players operation #mod white.main %= #20 white.main
execute if score #mod white.main matches 1 run playsound minecraft:entity.pig.ambient master @a ~ ~ ~ 1 1

execute anchored eyes positioned ^ ^ ^ run particle minecraft:bubble ~ ~0.5 ~ 0.3 0.2 0.3 0 10 force