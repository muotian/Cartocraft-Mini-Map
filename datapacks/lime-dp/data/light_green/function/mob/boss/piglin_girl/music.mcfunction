scoreboard players remove @s light_green.boss.music 1

execute if score @s light_green.boss.music matches 0 if score $piglin_girl_level light_green.main.math matches 1 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl record @a ~ ~ ~ 3 1
execute if score @s light_green.boss.music matches 0 if score $piglin_girl_level light_green.main.math matches 1 run scoreboard players set @s light_green.boss.music 7140
execute if score @s light_green.boss.music matches 0 if score $piglin_girl_level light_green.main.math matches 1 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl-2 record @a ~ ~ ~ 3 1
execute if score @s light_green.boss.music matches 0 if score $piglin_girl_level light_green.main.math matches 1 run scoreboard players set @s light_green.boss.music 6600