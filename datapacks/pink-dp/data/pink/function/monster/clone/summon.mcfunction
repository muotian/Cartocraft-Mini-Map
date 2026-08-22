#
summon enderman ~ ~ ~ {Health:70,Tags:["pink_mobs","pink.clone","new"],equipment:{mainhand:{id:wooden_sword,components:{item_model:"air"}}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:70f}],CustomName:[{"translate":"monster.pink.clone.name"}],Team:"pink.monster1"}

scoreboard players operation @n[tag=new,tag=pink.clone] pink.monster.clone.id = $index pink.monster.clone.id
scoreboard players add $index pink.monster.clone.id 1

data modify entity @n[tag=new,tag=pink.clone] angry_at set from entity @p UUID

scoreboard players set @n[tag=pink.clone,tag=new] pink.monster.clone.cd 130

tag @e[tag=pink.clone,tag=new] remove new

kill @s
kill @n[tag=pink.monster.b,type=marker]