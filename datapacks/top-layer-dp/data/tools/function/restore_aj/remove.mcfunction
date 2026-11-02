execute as @s[type=minecraft:player] run return fail
execute on passengers run function tools:restore_aj/remove
data modify entity @s DeathLootTable set value "tools:empty"
ride @s dismount
tp ~ -1000 ~
kill @s
