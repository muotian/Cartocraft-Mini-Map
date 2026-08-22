#有人在進行boss戰，無法開始
execute if score $player_boss_battle_amount gray.boss.data matches 1.. run return run tellraw @a [{translate:"gray.message.boss.cannotstart.1",color:"yellow"}]
#玩家不全在附近，無法開始
execute if entity @a[distance=10..,gamemode=!spectator] run return run tellraw @a [{translate:"gray.message.boss.cannotstart.2",color:"yellow"}]
#未持有任務道具
execute if function ccmini_gray:map/boss_coffin/if_taking_plot_item run return run tellraw @a [{translate:"gray.message.boss.cannotstart.3",color:"yellow"}]
#正在執行劇情時無法點擊
execute if score $eventtimer.boss_wake gray.map_event matches 1.. run return fail
#boss醒來劇情
execute unless score $eventtimer.boss_wake gray.map_event matches -1 run return run function ccmini_gray:map/boss/wake/play
#直接開始boss戰
execute unless score $player_boss_battle_amount gray.map_event matches 1.. run return run scoreboard players set $eventtimer.boss_wake gray.map_event 10
