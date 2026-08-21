scoreboard players remove @s light_green.boss.music 1

execute if score @s light_green.boss.music matches 0 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-big_hoglin-1 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
execute if score @s light_green.boss.music matches 0 run scoreboard players set @s light_green.boss.music 7000