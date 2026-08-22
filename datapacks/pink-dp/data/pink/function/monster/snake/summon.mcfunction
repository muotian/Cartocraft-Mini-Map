summon vex ~ ~ ~ {Health:70,Silent:1b,Tags:["pink_mobs","pink.snake","pink.snake_1","new"],attributes:[{id:scale,base:3f},{id:max_health,base:70f},{id:movement_speed,base:0.8f},{id:follow_range,base:60f}],equipment:{mainhand:{id:iron_axe}}}
summon vex ~ ~ ~ {Health:70,Silent:1b,Tags:["pink_mobs","pink.snake","pink.snake_2","new"],attributes:[{id:scale,base:3f},{id:max_health,base:70f}],NoAI:1b}
summon vex ~ ~ ~ {Health:70,Silent:1b,Tags:["pink_mobs","pink.snake","pink.snake_3","new"],attributes:[{id:scale,base:3f},{id:max_health,base:70f}],NoAI:1b}
summon vex ~ ~ ~ {Health:70,Silent:1b,Tags:["pink_mobs","pink.snake","pink.snake_4","new"],attributes:[{id:scale,base:3f},{id:max_health,base:70f}],NoAI:1b}
summon vex ~ ~ ~ {Health:70,Silent:1b,Tags:["pink_mobs","pink.snake","pink.snake_5","new"],attributes:[{id:scale,base:3f},{id:max_health,base:70f}],NoAI:1b}
summon vex ~ ~ ~ {Health:70,Silent:1b,Tags:["pink_mobs","pink.snake","pink.snake_6","new"],attributes:[{id:scale,base:3f},{id:max_health,base:70f}],NoAI:1b}

scoreboard players add $index pink.monster.snake.id 1
scoreboard players operation @e[tag=pink.snake,tag=new] pink.monster.snake.id = $index pink.monster.snake.id

tag @e[tag=new,tag=pink.snake] remove new