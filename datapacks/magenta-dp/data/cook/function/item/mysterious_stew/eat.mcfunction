#

playsound minecraft:block.portal.travel player @a ~ ~ ~ 0.2 2

scoreboard players set @s MagentaMysteriousStew 12000

attribute @s scale modifier add magenta.mysterious_stew -0.55 add_value

advancement revoke @s only cook:mysterious_stew
