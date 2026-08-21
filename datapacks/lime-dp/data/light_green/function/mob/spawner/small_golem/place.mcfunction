summon item_display ~ ~ ~ {Tags:["light_green","light_green.mob","light_green.spawner","light_green.small_golem"]}
setblock ~ ~ ~ spawner{SpawnRange:4,Delay:0,MaxSpawnDelay:800,MinSpawnDelay:700,MaxNearbyEntities:20,SpawnCount:1,RequiredPlayerRange:10,SpawnData:{entity:{id:piglin_brute,Tags:["light_green","light_green.mob","light_green.spawn_mob","light_green.small_golem"]}}} keep
playsound block.spawner.place block @a ~ ~ ~ 1 1
kill @s