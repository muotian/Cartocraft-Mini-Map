
execute facing entity @a[tag=white.atker,distance=..4,limit=1] feet rotated ~180 -45 run function white:sys/motion {s:1}

# fx
playsound minecraft:entity.breeze.deflect master @a ~ ~ ~ 0.3 1.25
particle minecraft:small_gust ~ ~1 ~ 0.2 0.6 0.2 0 5 force