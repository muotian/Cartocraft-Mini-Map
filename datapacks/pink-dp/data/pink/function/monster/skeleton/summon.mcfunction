#
summon skeleton ~ ~ ~ {Health:20,Tags:["pink_mobs","pink.skeleton"],equipment:{mainhand:{id:bone}},drop_chances:{mainhand:0f},attributes:[{id:movement_speed,base:0.25f},{id:scale,base:0.8f},{id:attack_knockback,base:1f},{id:max_health,base:15f},{id:safe_fall_distance,base:100f}],CustomName:[{"translate":"monster.pink.skeleton.name"}],DeathLootTable:"pink:item_d/white2"}

kill @s
kill @n[tag=pink.monster.b,type=marker]