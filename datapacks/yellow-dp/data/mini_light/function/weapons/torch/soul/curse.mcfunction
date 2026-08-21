# 執行者、執行位置是被詛咒的怪物

attribute @s armor modifier add soul_curse -0.2 add_multiplied_base
scoreboard players set @s mini_light.soul_curse_duration 160
effect give @s wither 8 0 false

particle smoke ~ ~1 ~ 0.0 0 0 0.2 50
particle sonic_boom ~ ~1 ~ 0.0 0 0 0.2 1

playsound entity.illusioner.cast_spell player @a ~ ~ ~ .5 2
playsound entity.illusioner.cast_spell player @a ~ ~ ~ .5 .5