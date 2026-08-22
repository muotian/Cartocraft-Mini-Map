#
scoreboard players operation $player_hp pink.white.skill3.damage = @s pink.player_health
scoreboard players operation $player_hp pink.white.skill3.damage *= $*10 pink.white.skill3.damage

execute if score @s pink.white.skill3.damage >= $player_hp pink.white.skill3.damage run scoreboard players operation @s pink.white.skill3.damage = $player_hp pink.white.skill3.damage
execute if score @s pink.white.skill3.damage >= $player_hp pink.white.skill3.damage run scoreboard players operation @s pink.white.skill3.damage -= $-10 pink.white.skill3.damage

execute store result storage pink:white_damage damage float 0.1 run scoreboard players get @s pink.white.skill3.damage

function pink:skills_3/white/damage with storage pink:white_damage {}

scoreboard players reset @s pink.white.skill3.damage
