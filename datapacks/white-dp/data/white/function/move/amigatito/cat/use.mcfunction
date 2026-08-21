
summon cat ~ ~ ~ {Tags:[white.move.amitatito.cat,"summon"],ForcedAge:0,NoGravity:1b,NoAI:1b,Silent:1b,Invulnerable:1b,variant:"minecraft:jellie"}

execute store result entity @e[tag=summon,distance=..0.1,type=cat,limit=1] Rotation[0] float 0.1 run random value 0..3600
execute store result entity @e[tag=summon,distance=..0.1,type=cat,limit=1] Rotation[1] float 0.1 run random value -450..-10

function white:sys/bullet/init
