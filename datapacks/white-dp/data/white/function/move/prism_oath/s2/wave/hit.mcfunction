
scoreboard players operation #self white.main = @s white.player.id
tag @e[tag=white.move.prism_oath.s2.wave_target,type=marker,predicate=white:player/is_owner,limit=1] add white.target

execute as @e[tag=white.victim,distance=..10] at @s run function white:move/prism_oath/s2/wave/victim

tag @e[tag=white.target,type=marker,limit=1] remove white.atker