execute on target run scoreboard players add @s cyan.admin 1
execute on target run tellraw @s[scores={cyan.admin=40..},tag=!cyan.admin1] {translate:"text.cyan.admin.1"}
execute on target run tag @s[scores={cyan.admin=40..}] add cyan.admin1
execute on target run tellraw @s[scores={cyan.admin=80..},tag=!cyan.admin2] {translate:"text.cyan.admin.2"}
execute on target run tag @s[scores={cyan.admin=80..}] add cyan.admin2
execute on target run tellraw @s[scores={cyan.admin=120..},tag=!cyan.admin3] {translate:"text.cyan.admin.3"}
execute on target run tag @s[scores={cyan.admin=120..}] add cyan.admin3