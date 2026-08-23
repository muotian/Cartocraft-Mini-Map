
# --- 檔案隨已知怪物變化 --- #
# --- 小冰鳥區域 --- #
execute as @s[tag=dummy] at @s run function black:spell/dummy {x:ewe}
execute as @s[tag=black.elite2] at @s run function black:mob/2/ini
execute as @s[tag=black.elite3] at @s run function black:mob/3/ini
execute as @s[tag=black.elite5] at @s run function black:mob/5/ini

# --- 引導 --- #
execute as @s[tag=dummy,tag=icebird.spell_channel] at @s run function black:spell/dummy {x:ewe}
execute as @s[tag=black.elite1,tag=icebird.spell_channel] at @s run function black:mob/1/ini
execute as @s[tag=black.elite6,tag=icebird.spell_channel] at @s run function black:mob/6/ini
execute as @s[tag=black.elite7,tag=icebird.spell_channel] at @s run function black:mob/7/ini


# --- 施放成功重置CD (保險一點放最後面) --- #
tag @s[tag=!icebird.spell_channel] remove icebird.spell_casting
scoreboard players set @s[tag=!icebird.spell_channel] icebird.spell_ready 0
scoreboard players set @s[tag=!icebird.spell_channel] icebird.spell_cd 0




