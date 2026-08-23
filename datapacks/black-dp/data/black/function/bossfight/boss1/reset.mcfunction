#停止計時
schedule clear black:bossfight/boss1/countdown
schedule clear black:bossfight/boss1/countdown_hard
schedule clear black:bossfight/boss1/death
schedule clear black:bossfight/boss1/tick
schedule clear black:bossfight/boss1/bossbar
schedule clear black:bossfight/boss1/loop
stopsound @a music
#清除召喚物
function black:bossfight/boss1/skill1/end
function black:bossfight/boss1/skill2/end
function black:bossfight/boss1/skill3/end
function black:bossfight/boss1/skill4/end
function black:bossfight/boss1/skill5/end
tp @n[type=zombie,tag=icebird.boss1] ~ ~-255 ~
kill @n[type=zombie,tag=icebird.boss1]
#恢復玩家狀態
effect clear @a poison
effect clear @a nausea
effect clear @a hunger
effect clear @a slowness
effect clear @a trial_omen
effect give @a instant_health 1 4
effect give @a saturation 2 10
gamemode adventure @a[gamemode=spectator]
function black:bossfight/boss1/rulereturn
bossbar set icebird.boss1_1 visible false
bossbar set icebird.boss1_2 visible false
bossbar set icebird.boss1_shield visible false
bossbar set icebird.boss1_skill visible false
scoreboard players reset @a icebird.DeathInBoss
tag @a remove icebird.bossfight_1
execute at @n[tag=black.boss1_center] run tp @a ~9 ~ ~ 90 0
#召喚NPC
function black:bossfight/boss1/npcsummon
#音效
execute at @e[tag=icebird.boss1_npc] run playsound item.trident.return block @a ~ ~ ~ 100 0.2
execute at @e[tag=icebird.boss1_npc] run particle explosion ~ ~ ~ 0 0 0 0 1 force

execute at @n[tag=black.boss1_center] run setblock ~ ~ ~ air
execute at @n[tag=black.boss1_center] run setblock ~ ~1 ~ air
execute at @n[tag=black.boss1_center] run fill ~13 ~ ~-5 ~13 ~6 ~5 air
