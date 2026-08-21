scoreboard objectives add c.heal dummy
scoreboard objectives add c.actual_heal dummy
scoreboard objectives add c.custom_healed dummy
execute unless entity 1-1-1-1-3 run summon item_display 0 0 0 {UUID:[I;1,65537,65536,3],item:{id:"stone",count:1},transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f]}