execute unless score @s icebird.spell_cd = @s icebird.spell_cd run function black:spell/cast/setup
execute if score @s icebird.spell_cd matches ..0 run scoreboard players add @s icebird.spell_cd 1
execute if score @s icebird.spell_cd matches 1.. if entity @a[gamemode=!spectator,distance=..20] run scoreboard players add @s icebird.spell_cd 1
execute if score @s icebird.spell_cd matches 10 on passengers run kill @s[tag=icebird.spell_text]
execute if score @s icebird.spell_cd matches -70 on passengers run kill @s[tag=icebird.spell_text]
execute if score @s icebird.spell_cd matches 150 run tag @s add icebird.spell_casting
scoreboard players add @s[tag=icebird.spell_casting] icebird.spell_ready 1
execute if score @s icebird.spell_ready matches 1 run execute summon text_display run function black:spell/cast/text_setup
execute if score @s[tag=!interrupt.immune] icebird.spell_ready matches 1 run function black:spell/cast/countdown {spellcolor:"color3:eaea4d,color2:d0d0d0,color1:d0d0d0"}
execute if score @s[tag=interrupt.immune] icebird.spell_ready matches 1 run function black:spell/cast/countdown {spellcolor:"color3:555555,color2:d0d0d0,color1:d0d0d0"}

execute if score @s[tag=!interrupt.immune] icebird.spell_ready matches 20 run function black:spell/cast/countdown {spellcolor:"color3:eaea4d,color2:eaea4d,color1:d0d0d0"}
execute if score @s[tag=interrupt.immune] icebird.spell_ready matches 20 run function black:spell/cast/countdown {spellcolor:"color3:555555,color2:555555,color1:d0d0d0"}

execute if score @s[tag=!interrupt.immune] icebird.spell_ready matches 40 run function black:spell/cast/countdown {spellcolor:"color3:eaea4d,color2:eaea4d,color1:eaea4d"}
execute if score @s[tag=interrupt.immune] icebird.spell_ready matches 40 run function black:spell/cast/countdown {spellcolor:"color3:555555,color2:555555,color1:555555"}

execute if score @s[tag=!interrupt.immune,tag=!icebird.spell_channel] icebird.spell_ready matches 59 run function black:spell/cast/countdown {spellcolor:"color3:eeff47,color2:eeff47,color1:eeff47"}
execute if score @s[tag=icebird.spell_channel] icebird.spell_ready matches 59 run function black:spell/cast/countdown {spellcolor:"color3:336600,color2:336600,color1:336600"}
execute if score @s[tag=interrupt.immune] icebird.spell_ready matches 59 run function black:spell/cast/countdown {spellcolor:"color3:272727,color2:272727,color1:272727"}

execute if score @s[tag=icebird.spell_channel] icebird.spell_ready matches 60.. run function black:spell/cast/cast_spell
execute if score @s[tag=!icebird.spell_channel] icebird.spell_ready matches 60 run function black:spell/cast/cast_spell


attribute @s[scores={icebird.spell_ready=..0}] movement_speed modifier remove icebird.casting
attribute @s[scores={icebird.spell_ready=..0}] knockback_resistance modifier remove icebird.casting
attribute @s[scores={icebird.spell_ready=1..}] movement_speed modifier add icebird.casting -100 add_value
attribute @s[scores={icebird.spell_ready=1..}] knockback_resistance modifier add icebird.casting 100 add_value