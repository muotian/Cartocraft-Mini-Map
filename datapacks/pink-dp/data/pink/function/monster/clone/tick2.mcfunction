scoreboard players operation $this pink.monster.clone.id = @s pink.monster.clone.id
execute as @e[tag=pink.clone] if score @s pink.monster.clone.id = $this pink.monster.clone.id run tag @s add clone_

execute unless entity @e[tag=clone_] run kill @s

tag @e[tag=pink.clone,tag=clone_] remove clone_

