advancement revoke @s only icer:mine_mithril

execute as @e[distance=..100,tag=icer.mithril] if data entity @s {HurtTime:10s} at @s run function icer:monster/mithril/kill