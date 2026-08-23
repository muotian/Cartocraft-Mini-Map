tag @e remove icer.end_wind
tag @e remove icer.executing_wind
scoreboard players reset @e icer.wind_story
execute as @e[tag=icer.summon_mithril_golem] at @s run setblock ~ ~ ~ prismarine_bricks
kill @e[tag=icer.mithril_golem]
kill @e[tag=icer.wind_guardian]