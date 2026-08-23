tag @s remove icebird.spell_casting
scoreboard players set @s icebird.spell_ready 0
scoreboard players set @s icebird.spell_cd -90
execute on attacker run scoreboard players set @s icebird.spell_cd 120
execute on attacker at @s run playsound black:interrupted block @s ~ ~ ~ 1 1
execute on passengers run data merge entity @s {text:[{"color":"dark_red","text":"▄"},{"color":"dark_red","text":"▄"},{"color":"dark_red","text":"▄"},{"color":"white","text":"【"},{"color":"white","translate":"icebird.spell_interrupt"},{"color":"white","text":"】"},{"color":"dark_red","text":"▄"},{"color":"dark_red","text":"▄"},{"color":"dark_red","text":"▄"}]}

scoreboard players set @s[tag=black.field_cast] icebird.core 0
tag @s remove black.field_cast

