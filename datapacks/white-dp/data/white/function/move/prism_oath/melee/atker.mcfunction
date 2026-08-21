
execute if score @s white.move.prism_oath.cd matches 1.. run return fail
scoreboard players set @s white.move.prism_oath.cd 5

execute if score #extra_oath white.main matches 1 run scoreboard players add @s white.move.prism_oath.count 2
execute unless score #extra_oath white.main matches 1 run scoreboard players add @s white.move.prism_oath.count 1

execute if score @s white.move.prism_oath.count matches 10.. run scoreboard players set @s white.move.prism_oath.count 9
function white:move/prism_oath/actionbar/use