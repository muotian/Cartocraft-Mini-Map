#
#summon chest_minecart ~ ~-1000 ~ {Tags:["pink_item_temp"]}
#item replace entity @n[tag=pink_item_temp] container.0 from entity @s weapon.mainhand
#item replace entity @s weapon.mainhand from entity @s weapon.offhand
#item replace entity @s weapon.offhand from entity @n[tag=pink_item_temp] container.0

#kill @n[tag=pink_item_temp]

# Slot

# ID
execute store result score @s pink.s1.id1 run data get entity @s equipment.offhand.components."minecraft:custom_data".id

# 物品
summon item ^0.6 ^1.1 ^0.7 {Tags:["pink_skill_slot_1","new","pink_skill_slot"],PickupDelay:-1,Item:{id:"black_wool",components:{max_stack_size:1,custom_data:{pink_item_slot:1b}}},NoGravity:1b,Invulnerable:1b,Glowing:1b}
summon item ^ ^1.1 ^1 {Tags:["pink_skill_slot_2","new","pink_skill_slot"],PickupDelay:-1,Item:{id:"black_wool",components:{max_stack_size:1,custom_data:{pink_item_slot:1b}}},NoGravity:1b,Invulnerable:1b,Glowing:1b}
summon item ^-0.6 ^1.1 ^0.7 {Tags:["pink_skill_slot_3","new","pink_skill_slot"],PickupDelay:-1,Item:{id:"black_wool",components:{max_stack_size:1,custom_data:{pink_item_slot:1b}}},NoGravity:1b,Invulnerable:1b,Glowing:1b}
summon marker ~ ~ ~ {Tags:["pink_skill_slot_marker","pink_skill_slot","new"]}

# 改變物品
data modify storage pink:skill_store skill1_temp set value -1
data modify storage pink:skill_store skill2_temp set value -1
data modify storage pink:skill_store skill3_temp set value -1

data modify storage pink:skill_store skill1_temp set from entity @s equipment.offhand.components."minecraft:custom_data".pink_skill_1_id
data modify storage pink:skill_store skill2_temp set from entity @s equipment.offhand.components."minecraft:custom_data".pink_skill_2_id
data modify storage pink:skill_store skill3_temp set from entity @s equipment.offhand.components."minecraft:custom_data".pink_skill_3_id

function pink:skill_slot/item_change with storage pink:skill_store {}

# iteraction
summon interaction ^0.6 ^1.2 ^0.7 {Tags:["pink_skill_slot_1_interaction","new","pink_skill_slot","skill_slot_interaction","empty"],width:0.3,height:0.4}
summon interaction ^ ^1.2 ^1 {Tags:["pink_skill_slot_2_interaction","new","pink_skill_slot","skill_slot_interaction","empty"],width:0.3,height:0.4}
summon interaction ^-0.6 ^1.2 ^0.7 {Tags:["pink_skill_slot_3_interaction","new","pink_skill_slot","skill_slot_interaction","empty"],width:0.3,height:0.4}

#execute unless items entity @s weapon.offhand clock[custom_data~{skill_0:"_"}] run function pink:skill_slot1_change
tag @s add this_player

# ID
execute as @e[tag=pink_skill_slot,type=item,tag=new] run data modify entity @s Owner set from entity @p[tag=this_player] UUID

scoreboard players operation @e[tag=pink_skill_slot,tag=new] pink.id = $index pink.id
scoreboard players operation @s pink.id = $index pink.id
scoreboard players add $index pink.id 1

tag @e[tag=pink_skill_slot,tag=new] remove new
tag @s remove this_player


#
playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
playsound minecraft:block.lever.click player @a ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2