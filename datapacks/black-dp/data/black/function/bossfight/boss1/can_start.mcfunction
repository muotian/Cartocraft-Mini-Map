tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
execute at @n[tag=black.boss1_center] run fill ~13 ~ ~-5 ~13 ~6 ~5 minecraft:bedrock
dialog clear @a
scoreboard players set @s[scores={icebird.dialogue=1..}] icebird.dialogue 0
playsound item.book.page_turn block @s ~ ~ ~ 100 1
execute at @e[type=mannequin,tag=icebird.boss1_spirit] run particle explosion ~ ~ ~ 0 0 0 0 1 force
tp @e[tag=icebird.boss1_spirit] ~ ~-100 ~
kill @e[tag=icebird.boss1_spirit]
effect give @a instant_health 1 4
function black:bossfight/boss1/ready