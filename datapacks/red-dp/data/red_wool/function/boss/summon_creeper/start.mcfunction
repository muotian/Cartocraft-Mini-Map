bossbar set minecraft:red_wool.boss.creeper visible true
bossbar set minecraft:red_wool.boss.creeper max 220
bossbar set minecraft:red_wool.boss.creeper players @a[predicate = red_wool:in_boss_area]

scoreboard players set creeper red_wool.boss 220

function red_wool:boss/pets/creeper