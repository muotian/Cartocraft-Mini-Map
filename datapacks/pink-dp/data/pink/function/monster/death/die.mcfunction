#
kill @s


#
execute unless entity @e[distance=..18,tag=pink_mobs] run return fail

summon item_display ~ ~ ~ {Tags:["pink.death.die_marker"],item:{id:"stone",components:{item_model:"pink:monster/death/sk"}},Glowing:1b,glow_color_override:16711680,teleport_duration:1}
tag @e[tag=pink_mobs,distance=..20,limit=1,sort= furthest] add pink.death.die_marker.target




