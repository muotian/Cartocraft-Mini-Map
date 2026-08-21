
execute if score @s white.move.prism_oath.cd matches 1.. run return fail

scoreboard players set @s white.move.prism_oath.cd 5

function white:sys/dmg/extra_dmg/load

execute if score @s white.move.prism_oath.count matches 1.. run function white:move/prism_oath/melee/2
scoreboard players add @s white.move.prism_oath.count 1
execute if score @s white.move.prism_oath.count matches 10.. run scoreboard players set @s white.move.prism_oath.count 9

# extra oath
scoreboard players set #extra_oath white.main 0
execute store result score #max_health white.main run attribute @s max_health get
scoreboard players operation #health white.main /= #max_health white.main
execute if score #health white.main matches 80.. run scoreboard players set #extra_oath white.main 1

# fx
particle minecraft:sculk_soul ~ ~1 ~ 0.2 0.4 0.2 0.05 2 force
function white:move/prism_oath/melee/count_disp/use