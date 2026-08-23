execute as @e[type=allay,tag=brown_wool.thunder_spirit.narrative] at @s run tp @s ~ ~-200 ~
execute as @e[type=allay,tag=brown_wool.thunder_spirit.narrative] at @s run kill @s
execute as @e[type=marker,tag=brown_wool.thunder_spirit.narrative_marker] at @s run summon allay ~ ~0.2 ~ {Tags:["brown_wool.thunder_spirit.narrative"],NoAI:true,Invulnerable:true,PersistenceRequired:true,attributes:[{id:scale,base:1.5}],Rotation:[330,0]}





