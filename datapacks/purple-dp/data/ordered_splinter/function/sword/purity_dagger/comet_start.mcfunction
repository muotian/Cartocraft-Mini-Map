# 執行者、執行位置是玩家

execute unless score @s wool_purple.comet_cd matches 0 run title @s actionbar [{"translate":"item.purity_dagger.lore.16","color":"white"},{"translate":"item.purity_dagger.lore.17","color":"#7FC1F4"},{"translate":"item.purity_dagger.lore.18","color":"white"},{"translate":"ability_cd.1","color":"white"},{"score":{"name":"@s","objective":"wool_purple.comet.sec"}},{"translate":"ability_cd.2","color":"white"}]
execute unless score @s wool_purple.comet_cd matches 0 run return fail

execute as @s at @s positioned ^ ^ ^2 run summon marker ~ ~2.75 ~ {Tags:["wool_purple.comet"]}
execute as @s at @s positioned ^2.5 ^ ^2 run summon marker ~ ~2 ~ {Tags:["wool_purple.comet"]}
execute as @s at @s positioned ^-2.5 ^ ^2 run summon marker ~ ~2 ~ {Tags:["wool_purple.comet"]}

execute as @s run scoreboard players set @s wool_purple.comet_cd 600
