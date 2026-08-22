#
scoreboard players operation $this pink.monster.clone.id = @s pink.monster.clone.id
execute as @e[tag=pink.clone2] if score @s pink.monster.clone.id = $this pink.monster.clone.id run kill @s


#
scoreboard players set @s pink.monster.clone.cd 0
effect give @s instant_health

summon enderman ~ ~ ~.5 {Health:10,Tags:["pink_mobs","pink.clone2","new"],equipment:{mainhand:{id:wooden_sword,components:{item_model:"air"}}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:15f}],Silent:1b,DeathLootTable:"",CustomName:[{"translate":"monster.pink.clone.name"}],Team:"pink.monster1"}
summon enderman ~.5 ~ ~ {Health:10,Tags:["pink_mobs","pink.clone2","new"],equipment:{mainhand:{id:wooden_sword,components:{item_model:"air"}}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:15f}],Silent:1b,DeathLootTable:"",CustomName:[{"translate":"monster.pink.clone.name"}],Team:"pink.monster1"}
summon enderman ~.5 ~ ~.5 {Health:10,Tags:["pink_mobs","pink.clone2","new"],equipment:{mainhand:{id:wooden_sword,components:{item_model:"air"}}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:15f}],Silent:1b,DeathLootTable:"",CustomName:[{"translate":"monster.pink.clone.name"}],Team:"pink.monster1"}

scoreboard players operation @e[tag=new,tag=pink.clone2] pink.monster.clone.id = @s pink.monster.clone.id

execute as @e[tag=new,tag=pink.clone2] run data modify entity @s angry_at set from entity @p UUID

tag @e[tag=pink.clone2,tag=new] remove new

#
particle minecraft:dragon_breath ~ ~1.5 ~ .2 .5 .2 0.1 40

playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0
