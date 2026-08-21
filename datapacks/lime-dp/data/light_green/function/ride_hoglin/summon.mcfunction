advancement revoke @s only light_green:horn
execute on vehicle run tag @s add light_green.vehicle
execute as @e[tag=light_green.vehicle,limit=1] if entity @s[tag=light_green.hoglin_ride.hoglin] run return run tag @s remove light_green.vehicle
execute on vehicle run tag @s remove light_green.vehicle


summon hoglin ~ ~ ~ {Tags:["light_green.hoglin_ride.hoglin","light_green.new.hoglin","light_green","light_green.mob"],NoAI:false,DeathLootTable:"",attributes:[{id:safe_fall_distance,base:10},{id:scale,base:1},{id:"movement_speed",base:0},{id:step_height,base:1.25},{id:"gravity", base:0.12}],IsImmuneToZombification:true,Silent:1b}
execute store result score @n[tag=light_green.hoglin_ride.hoglin] light_green.player_id run scoreboard players get @s light_green.player_id
ride @s mount @n[tag=light_green.new.hoglin]
tag @n[tag=light_green.new.hoglin] remove light_green.new.hoglin