summon marker ~ ~1.5 ~ {Tags:["new", "mini_light.blaze_totem", "mini_light.totem"]}
scoreboard players set @e[tag=new, tag=mini_light.blaze_totem] mini_light.totem_duration 200
tag @e[tag=new] remove new

playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1 0.5