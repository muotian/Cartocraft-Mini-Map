execute as @a if function ccmini_gray:map/boss/wake/if_player_have_gopr run tag @s add gray.plot.gopr_owner
tellraw @a [{selector:"@a[tag=gray.plot.gopr_owner]",color:"gold"},{text:"》",color:dark_gray},{translate:"gray.message.boss_wake.plot.9",color:gray}]
tag @a remove gray.plot.gopr_owner