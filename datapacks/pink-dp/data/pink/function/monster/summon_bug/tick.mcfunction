# summon 1
execute as @e[type=item] if items entity @s container.* stone_sword[custom_data~{pink_summon_bug:1}] at @s run function pink:monster/summon_bug/summon1
execute as @e[type=item] if items entity @s container.* stone_sword[custom_data~{pink_summon_bug:2}] at @s run function pink:monster/summon_bug/summon2

