execute on target run tag @s add gray.dune_recluse.target
execute if entity @a[tag=gray.dune_recluse.target,limit=1] run scoreboard players add @s gray.desert_ranger_anticipation 1
execute unless entity @a[tag=gray.dune_recluse.target,limit=1] run scoreboard players reset @s gray.desert_ranger_anticipation
tag @a[tag=gray.dune_recluse.target,limit=1] remove gray.dune_recluse.target