
scoreboard players operation #self white.main = @s white.player.id
execute as @a[predicate=white:player/is_owner,limit=1] run return run tag @s add white.atker.owner
return fail