#
summon magma_cube ~ ~ ~ {Size:0,Health:30,Silent:1b,Tags:["pink_mobs","pink.tp_bug","new"],active_effects:[{id:slow_falling,duration:-1,amplifier:0,show_particles:0b}],attributes:[{id:scale,base:2.5f},{id:max_health,base:25f}],CustomName:[{"translate":"monster.pink.tp_bug.name"}]}

kill @s
kill @n[tag=pink.monster.b,type=marker]


