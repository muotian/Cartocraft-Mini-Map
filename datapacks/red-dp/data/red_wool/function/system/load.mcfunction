scoreboard objectives add red_wool.tmp dummy
scoreboard objectives add red_wool.explosion_for_reg dummy
scoreboard objectives add red_wool.tnt_axe dummy
scoreboard objectives add red_wool.player_use dummy
scoreboard objectives add red_wool.new_year_leggings dummy
scoreboard objectives add red_wool.enemy dummy
scoreboard objectives add red_wool.totem_of_peace dummy
scoreboard objectives add red_wool.new_year_shoes dummy
scoreboard objectives add red_wool.new_year_shoes1 totalKillCount
scoreboard objectives add red_wool.chat dummy
scoreboard objectives add red_wool.boss dummy
scoreboard objectives add red_wool.bgm dummy

scoreboard objectives add red_wool.break_spawner minecraft.mined:spawner

team add red_wool
team modify red_wool friendlyFire false

bossbar add red_wool.boss [{"translate":"red_wool.boss", color:red}," | HP : ", {score:{name:"hp", objective:"red_wool.boss"}, color:"white"}, " / ", {score:{name:"max_hp", objective:"red_wool.boss"}, color:"white"}]
bossbar set red_wool.boss color red
bossbar set red_wool.boss style notched_10

bossbar add red_wool.boss.creeper [{"translate":"red_wool.boss.creeper", color:green}]
bossbar set red_wool.boss.creeper color green
bossbar set red_wool.boss.creeper style notched_10

# execute unless entity @n[tag = red_wool.center] run summon marker 0.0 0.0 0.0 {Tags:[red_wool.center]}

scoreboard players set hp red_wool.boss 0