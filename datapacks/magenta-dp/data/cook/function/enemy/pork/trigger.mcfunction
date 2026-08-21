#

summon evoker_fangs ~ ~ ~
effect give @p slowness 3 2 false

execute as @e[tag=MagentaPork,type=hoglin,distance=..20] at @s run playsound entity.hoglin.angry hostile @a ~ ~ ~ 1 0.5
execute as @e[tag=MagentaPork,type=hoglin,distance=..20] at @s run particle angry_villager ~ ~0.4 ~ 0.5 0.8 0.5 0.005 1 force @a
effect give @e[tag=MagentaPork,type=hoglin,distance=..20] speed 5 1 true

kill @s
