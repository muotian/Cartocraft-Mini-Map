# color3 = 倒數3秒的顏色
# color2 = 倒數2秒的顏色
# color3 = 倒數1秒的顏色
# spellcolor = 法術圖標的顏色
# spelltext = 法術圖標/文字

# --- 指令隨著可施法怪物數量變化 --- #

$execute as @s[tag=dummy,tag=!icebird.spell_channel] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:white,spelltext:icebird.spell.cast_text1}
$execute as @s[tag=black.elite2] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:gold,spelltext:icebird.spell.cast_text11}
$execute as @s[tag=black.elite3] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:yellow,spelltext:icebird.spell.cast_text12}
$execute as @s[tag=black.elite5] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:red,spelltext:icebird.spell.cast_text16}

# --- 引導 --- #
$execute as @s[tag=dummy,tag=icebird.spell_channel] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:white,spelltext:icebird.spell.cast_text1}
$execute as @s[tag=black.elite1,tag=icebird.spell_channel] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:gray,spelltext:icebird.spell.cast_text3}
$execute as @s[tag=black.elite6,tag=icebird.spell_channel] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:aqua,spelltext:icebird.spell.cast_text15}
$execute as @s[tag=black.elite7,tag=icebird.spell_channel] on passengers run function black:spell/cast/showtext {$(spellcolor),spellcolor:dark_gray,spelltext:icebird.spell.cast_text2}



playsound minecraft:block.note_block.hat block @a[distance=..20] ~ ~ ~ 3 1
