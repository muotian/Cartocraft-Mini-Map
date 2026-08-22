data modify entity @s angry_at set from entity @n[tag=wool_purple.tornado_target] UUID
execute store result score @s wool_purple.y_position run data get entity @s Pos[1] 1
execute if score @s wool_purple.y_position matches ..-128 run data remove entity @s Owner
scoreboard players add @s wool_purple.kill_tornado 1
function ordered_splinter:particle/tornado
execute if score @s wool_purple.kill_tornado matches 200 run function ordered_splinter:sword/pyrowind_longsword/kill
scoreboard players add @s wool_purple.summon_tornado 1
execute if score @s wool_purple.summon_tornado matches 30 run function ordered_splinter:sword/pyrowind_longsword/start_tornado
execute if score @s wool_purple.summon_tornado matches 30 run scoreboard players set @s wool_purple.summon_tornado 0