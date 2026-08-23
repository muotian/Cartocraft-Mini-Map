scoreboard players add @s icebird.boss1 1
execute if score @s icebird.boss1 matches 1 on passengers run data merge entity @s[tag=icebird.b1s4_text1] {text:{"color":"yellow","text":"⬛⬛⬜"},background:-5046017}
execute if score @s icebird.boss1 matches 2 on passengers run data merge entity @s[tag=icebird.b1s4_text1] {text:{"color":"yellow","text":"⬛⬜⬜"},background:-5046017}
execute if score @s icebird.boss1 matches 3 on passengers run data merge entity @s[tag=icebird.b1s4_text1] {text:{"color":"yellow","text":"⬜⬜⬜"},background:-5046017}
playsound minecraft:entity.zombie.attack_wooden_door block @a ~ ~ ~ 0.5 1.3
particle block{block_state:"minecraft:yellow_concrete_powder"} ~ ~.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s icebird.boss1 matches 3.. run function black:bossfight/boss1/skill4/break
