execute store result score shard_sword red_wool.tmp run data get entity @s SelectedItem.components."minecraft:custom_data".strong_attack
scoreboard players remove shard_sword red_wool.tmp 1

execute if score shard_sword red_wool.tmp matches 3 run item modify entity @s weapon.mainhand {function:"set_components", components:{custom_data:{strong_attack:3}}}
execute if score shard_sword red_wool.tmp matches 2 run item modify entity @s weapon.mainhand {function:"set_components", components:{custom_data:{strong_attack:2}}}
execute if score shard_sword red_wool.tmp matches 1 run item modify entity @s weapon.mainhand {function:"set_components", components:{custom_data:{strong_attack:1}}}
execute if score shard_sword red_wool.tmp matches ..0 run item modify entity @s weapon.mainhand {function:"set_components", components:{custom_data:{strong_attack:0}, item_model:"red_wool:shard_sword", blocks_attacks:{block_delay_seconds:0.5}}}
execute if score shard_sword red_wool.tmp matches ..0 run playsound block.fire.extinguish block @s ~ ~ ~ 1.0 1.0 1.0