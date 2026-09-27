tag @e[tag=icer.portal] add icer.tped
function icer:calamity_treant/dead/kill_boss
clone 391 72 1124 391 72 1124 379 93 1115 replace
tp @a @n[tag=icer.killed_boss]
setblock 381 97 1115 air
execute as @a at @s run particle explosion ~ ~ ~ 3 3 3 0.1 200 force

playsound entity.generic.explode ambient @a ~ ~ ~

data merge entity @n[tag=icer.treant] {active_effects:[{id:"invisibility",duration:-1,show_particles:false}]}

kill @n[tag=icer.story_interaction]