
gamemode survival @a
gamerule spawner_blocks_work true
time set midnight

clear @a
effect clear @a
effect give @a instant_health 1 27 true
effect give @a saturation 1 255 true
xp set @a 0 levels
xp set @a 0 points
tp @a 0 1 1001 0 0
spawnpoint @a 0 1 1001 0 0

kill @e[tag=white.sys.trader,type=villager]
setblock 5 1 1007 minecraft:oak_button[face=floor,facing=east,powered=false]
setblock 5 0 1007 minecraft:command_block[conditional=false,facing=west]{Command:"function white:sys/api/summon_trader",SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,components:{},conditionMet:0b,powered:0b}