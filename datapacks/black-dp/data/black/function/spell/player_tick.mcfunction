execute unless score @s icebird.spell_cd = @s icebird.spell_cd run scoreboard players set @s icebird.spell_cd 0
scoreboard players remove @s[scores={icebird.spell_cd=1..}] icebird.spell_cd 1
execute if score @s icebird.spell_cd matches 1 run function black:spell/interrupt/ready