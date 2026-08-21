
execute if score @s white.mob.id matches 1.. run scoreboard players operation @e[tag=summon,limit=1] white.mob.id = @s white.mob.id
execute if score @s white.player.id matches 1.. run scoreboard players operation @e[tag=summon,limit=1] white.player.id = @s white.player.id

tag @e[tag=summon,limit=1] remove summon