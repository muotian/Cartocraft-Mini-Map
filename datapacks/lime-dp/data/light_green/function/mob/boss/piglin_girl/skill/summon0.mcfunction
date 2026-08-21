execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~34 facing entity @e[tag=aj.piglin_girl.root,limit=1] feet run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera0_real"]}
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~34 facing entity @e[tag=aj.piglin_girl.root,limit=1] feet run rotate @n[tag=light_green.piglin_girl.summon_camera0_real] ~ ~
scoreboard players set @s light_green.boss.animation 61
scoreboard players set @s light_green.boss.attack_type -2
bossbar set light_green:piglin_girl name {text:"\ue006",font:"light_green:custom",shadow_color:0}