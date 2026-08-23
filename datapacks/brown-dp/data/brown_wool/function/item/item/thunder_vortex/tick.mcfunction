# 執行者：無
# 執行位置：世界重生點



execute as @e[type=item] at @s if items entity @s container.* heart_of_the_sea[custom_data={brown_wool.thunder_vortex:1}] unless block ~ ~-0.1 ~ air run tag @s add brown_wool.thunder_vortex1
execute as @e[type=item ,tag=brown_wool.thunder_vortex1] at @s run summon marker ~ ~ ~ {Tags:["brown_wool.thunder_vortex2"]}
execute as @e[type=item ,tag=brown_wool.thunder_vortex1] run kill @s


execute as @e[type=marker, tag=brown_wool.thunder_vortex2] at @s run function brown_wool:item/item/thunder_vortex/as_item



