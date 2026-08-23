scoreboard players set $strength player_motion.api.launch 15000
#設定motion強度

execute rotated as @n[tag=icer.calamity_treant] rotated ~ -10 run function player_motion:api/launch_looking
#產生motion

effect give @s slowness 3 3 true
#緩速

damage @s 5 icer:calamity_treant_ability2 by @n[tag=icer.calamity_treant]
#造成傷害

scoreboard players add @s icer.plague_count 1