execute as @e[tag=wool_purple.comet,type=marker] at @s run function ordered_splinter:sword/purity_dagger/comet_move
execute as @a if score @s wool_purple.comet_cd matches 599 unless entity @e[tag=wool_purple.comet,type=marker] run title @s actionbar [{"translate":"no_target","color":"dark_green"}]
execute as @a if score @s wool_purple.comet_cd matches 599 if entity @e[tag=wool_purple.comet,type=marker] run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1.2
execute as @a if score @s wool_purple.comet_cd matches 599 if entity @e[tag=wool_purple.comet,type=marker] run playsound minecraft:entity.breeze.idle_ground player @a ~ ~ ~ 2 0.75
