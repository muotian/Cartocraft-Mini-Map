particle end_rod ~ ~1 ~ 0 0 0 0.2 10 force
playsound entity.player.attack.strong ambient @a ~ ~ ~
#播放音效跟特效

damage @s 15 icer:calamity_treant_ability2 by @n[tag=icer.calamity_treant]
#造成傷害

scoreboard players set $strength player_motion.api.launch 10000
#設定player_motion強度

execute rotated as @n[tag=icer.calamity_treant] rotated ~ -10 run function player_motion:api/launch_looking
#把玩家打飛

effect give @s slowness 3 3 true
#緩速玩家
