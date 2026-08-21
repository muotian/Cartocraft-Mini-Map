execute at @s if entity @n[tag=light_green.target,distance=..10] at @s facing entity @n[tag=light_green.summon.graud_golem] feet rotated ~ 0 run tp @s ^ ^ ^0.5
execute at @s if entity @n[tag=light_green.target,distance=..10] run function light_green:mob/boss/piglin_girl/skill/dagger/teleport/2_11
execute at @s if entity @n[tag=light_green.target,distance=11..] run function light_green:mob/boss/piglin_girl/skill/dagger/teleport/3
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ if entity @s[distance=28..] run function light_green:mob/boss/piglin_girl/skill/dagger/teleport/4