summon marker ~ ~ ~ {Tags:[gray.vex_summoner,gray.new]}
ride @e[type=marker,tag=gray.new,limit=1] mount @s
tag @e[type=marker,tag=gray.new] remove gray.new
tag @s add gray.pyrogrit.checked