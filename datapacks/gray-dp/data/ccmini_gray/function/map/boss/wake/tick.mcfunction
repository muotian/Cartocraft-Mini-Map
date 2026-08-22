#強制中斷劇情
execute if score $eventtimer.boss_wake gray.map_event matches 11..500 unless function ccmini_gray:map/boss/wake/if_any_player_have_gopr run function ccmini_gray:map/boss/wake/stop



#讓玩家盯著boss
execute if score $eventtimer.boss_wake gray.map_event matches 11..490 as @a at @s run rotate @s facing entity @e[type=item_display,tag=aj.gray_plot_boss.root,limit=1] feet

#跑劇情
execute if score $eventtimer.boss_wake gray.map_event matches 490 run function ccmini_gray:map/boss/wake/summon_boss
execute if score $eventtimer.boss_wake gray.map_event matches 460 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.1",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 440 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.2",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 400 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.3",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 380 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.4",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 360 as @a run tellraw @s [{selector:"@s",color:gold},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.5",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 335 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.6",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 295 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.7",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 259 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.8",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 230 run function ccmini_gray:map/boss/wake/plot9
execute if score $eventtimer.boss_wake gray.map_event matches 200 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.10",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 135 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.11",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 85 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.12",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 55 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.13",color:gray}]
execute if score $eventtimer.boss_wake gray.map_event matches 10 run effect give @a blindness 2 0 true


execute if score $eventtimer.boss_wake gray.map_event matches 1 run function ccmini_gray:map/boss/battle/tp_battlefield
execute if score $eventtimer.boss_wake gray.map_event matches 1 run function ccmini_gray:map/boss/wake/end
execute if score $eventtimer.boss_wake gray.map_event matches 1.. run scoreboard players remove $eventtimer.boss_wake gray.map_event 1

