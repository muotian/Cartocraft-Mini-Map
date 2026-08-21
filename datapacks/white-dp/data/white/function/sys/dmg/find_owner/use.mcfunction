
execute if score @s white.player.id matches 1.. run return run function white:sys/dmg/find_owner/player

scoreboard players operation #self white.main = @s white.mob.id
execute as @e[predicate=white:mob/is_owner,distance=..128,limit=1] run return run tag @s add white.atker.owner
return fail