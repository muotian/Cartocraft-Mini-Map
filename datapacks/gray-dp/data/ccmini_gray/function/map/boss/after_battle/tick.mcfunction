#重傷喘息
execute as @e[type=item_display,tag=gray.boss.after_battle_breath,limit=1] at @s run function ccmini_gray:map/boss/after_battle/breath


#被打觸發壞結局
execute if entity @e[type=parched,tag=gray.boss.after_battle.hitbox,limit=1,nbt={HurtTime:9s}] run function ccmini_gray:map/boss/after_battle/bad_end


#bad end tick
execute if score $eventtimer.boss_bad_end gray.map_event matches 1.. run scoreboard players remove $eventtimer.boss_bad_end gray.map_event 1
execute if score $eventtimer.boss_bad_end gray.map_event matches 36 at @e[type=item_display,tag=aj.gray_plot_boss.root,limit=1] run function ccmini_gray:map/boss/after_battle/bad_end_finally
execute if score $eventtimer.boss_bad_end gray.map_event matches 1 run function ccmini_gray:map/boss/after_battle/end


#虛弱劇情
execute if score $eventtimer.boss_weak gray.map_event matches 960 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.1",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 920 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.2",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 880 run tellraw @a [{selector:"@a",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.3",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 840 run tellraw @a [{selector:"@a",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.4",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 800 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.5",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 760 run function ccmini_gray:map/boss/after_battle/taking_gopr_player_plot/plot6
execute if score $eventtimer.boss_weak gray.map_event matches 720 run function ccmini_gray:map/boss/after_battle/taking_gopr_player_plot/plot7
execute if score $eventtimer.boss_weak gray.map_event matches 680 run function ccmini_gray:map/boss/after_battle/taking_gopr_player_plot/plot8
execute if score $eventtimer.boss_weak gray.map_event matches 640 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.9",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 600 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.10",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 560 run tellraw @a [{translate:"gray.message.boss_weak.plot.11",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 520 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.12",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 480 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.13",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 440 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.14",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 400 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.15",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 360 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.16",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 320 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.17",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 280 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.18",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 240 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.19",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 200 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.20",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 160 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.21",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 120 run tellraw @a [{translate:"gray.message.unknow_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.22",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 120 run function animated_java:gray_plot_boss/remove/all
execute if score $eventtimer.boss_weak gray.map_event matches 80 run tellraw @a [{translate:"gray.message.boss_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.23",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 40 run tellraw @a [{translate:"gray.message.boss_name",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_weak.plot.24",color:gray}]
execute if score $eventtimer.boss_weak gray.map_event matches 1 run function ccmini_gray:map/boss/after_battle/end



execute if score $eventtimer.boss_weak gray.map_event matches 1.. run scoreboard players remove $eventtimer.boss_weak gray.map_event 1