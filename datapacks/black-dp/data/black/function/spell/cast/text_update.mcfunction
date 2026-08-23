execute if score @s icebird.spell_ready matches 1..19 run function black:spell/cast/countdown {spellcolor:"color3:eaea4d,color2:d0d0d0,color1:d0d0d0"}

execute if score @s icebird.spell_ready matches 20..39 run function black:spell/cast/countdown {spellcolor:"color3:eaea4d,color2:eaea4d,color1:d0d0d0"}


execute if score @s icebird.spell_ready matches 40..59 run function black:spell/cast/countdown {spellcolor:"color3:eaea4d,color2:eaea4d,color1:eaea4d"}

execute if score @s[tag=!icebird.spell_channel] icebird.spell_ready matches 59.. run function black:spell/cast/countdown {spellcolor:"color3:eeff47,color2:eeff47,color1:eeff47"}
execute if score @s[tag=icebird.spell_channel] icebird.spell_ready matches 59.. run function black:spell/cast/countdown {spellcolor:"color3:336600,color2:336600,color1:336600"}

