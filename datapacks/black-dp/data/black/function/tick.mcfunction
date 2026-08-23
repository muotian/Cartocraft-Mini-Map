# --- Jacky --- #
function black:entity_tick
execute as @a at @s run function black:player_tick
execute store result score $players icebird.core run execute if entity @a

# --- 法術系統 --- #
execute store result score $icebird.players icebird.core run execute if entity @a
execute store result score $players icebird.core run execute if entity @a
execute as @a at @s run function black:spell/player_tick
execute as @e[type=#minecraft:hostile,tag=icebird.spell_cast,tag=!special] at @s run function black:spell/cast/ini
execute as @e[type=text_display,tag=icebird.spell_text] at @s unless predicate black:on_spellcaster run kill @s
execute store result score $difficulty icebird.core run difficulty

# --- Items --- #
execute as @e[type=item_display,tag=black.star] at @s run function black:item/core/attack/tick

# --- Bossfight & NPC --- #
function black:bossfight/tick

# --- Area --- #
execute as @e[type=#minecraft:hostile,tag=black.mobs] unless score @s black.element = @s black.element run function black:area/setup

# --- Mobs --- #
function black:mob/tick

# --- 360 (counter clockwise) --- #
execute store result storage icebird1209:core 360 float 3 run scoreboard players remove $360 icebird.core 1
execute store result storage icebird1209:core 360 float 1 if score $360 icebird.core matches -720 run scoreboard players set $360 icebird.core -360

# --- Adventure --- #
execute unless entity @a[tag=black.inbossroom] store result score $mobgrief icebird.core run gamerule mob_griefing
execute as @n[type=marker,tag=icebird.b1s1_corner3] at @s run tag @a[dx=33,dy=50,dz=33] add black.inbossroom
execute as @a[tag=black.inbossroom] at @s if entity @e[type=marker,tag=black.boss1_center,distance=..25] run function black:bossfight/adv
execute as @a[tag=black.inbossroom,gamemode=adventure] at @s unless entity @n[type=marker,tag=black.boss1_center,distance=..25] run function black:bossfight/sur
execute at @n[type=marker,tag=black.boss1_center] if entity @a[tag=black.inbossroom] if block ~ ~ ~ reinforced_deepslate run particle firework ~ ~5 ~ 0 25 0 0.01 35 force

# 本資料包所有指令由 小冰鳥Icebird 及 JackY99 編寫。
# All commands in this datapack are made ny Icebird and JackY99.