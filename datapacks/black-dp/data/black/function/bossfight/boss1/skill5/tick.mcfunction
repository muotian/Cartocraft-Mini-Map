#b1s5_act
scoreboard players add $b1s5_timer icebird.boss1 1
execute if score $b1s5_timer icebird.boss1 matches 10 as @n[tag=icebird.boss1] at @n[tag=black.boss1_center] run tp @s ~ ~20 ~
execute if score $b1s5_timer icebird.boss1 matches 10 at @n[tag=black.boss1_center] run playsound minecraft:entity.warden.emerge block @a ~ ~ ~ 2 2
execute if score $b1s5_timer icebird.boss1 matches 10 at @n[tag=black.boss1_center] run summon minecraft:item_display ~ ~ ~ {teleport_duration:2,Tags:[icebird.b1s5,icebird.b1s5_circle],brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "black:circle"}, count: 1, id: "minecraft:yellow_dye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [15.0f, 15.0f, 15.0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score $b1s5_timer icebird.boss1 matches 100 run function black:bossfight/boss1/skill5/ini2
execute if score $b1s5_timer icebird.boss1 matches 100 run function black:bossfight/boss1/skill5/shield


execute if score $b1s5_timer icebird.boss1 matches 220 run function black:bossfight/boss1/skill1/ini
execute if score $b1s5_timer icebird.boss1 matches 620 run function black:bossfight/boss1/skill1/ini
execute if score $b1s5_timer icebird.boss1 matches 620 run scoreboard players set $b1s5_timer icebird.boss1 221

execute store result bossbar icebird.boss1_shield value run data get entity @n[tag=icebird.boss1] AbsorptionAmount
execute if score $b1s5_timer icebird.boss1 matches 120.. if data entity @n[tag=icebird.boss1] {AbsorptionAmount:0f} run function black:bossfight/boss1/skill5/end_ewe