summon marker ~ ~ ~ {Tags:["portal_particle"]}
summon marker ~ ~ ~ {Tags:["portal_particle_move","move2","new"]}
summon marker ~ ~2.8 ~ {Tags:["portal_particle_move","new"]}

scoreboard players set @e[tag=portal_particle_move,tag=new,tag=move2] portal 18
scoreboard players set @e[tag=portal_particle_move,tag=new,tag=!move2] portal 112

tag @e[tag=new] remove new

