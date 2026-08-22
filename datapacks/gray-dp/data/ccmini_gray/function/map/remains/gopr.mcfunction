execute on target run function ccmini_gray:give/grit_of_pristine_revival
execute on target run tellraw @a [{selector:"@s",color:gold},{text:"》",color:"dark_gray"},{translate:"gray.message.guide.1",color:"gray"}]
scoreboard players set $state gray.map_event 1
kill @e[type=item_display,tag=gray.plot.gopr,limit=1]
kill @s