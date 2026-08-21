
advancement revoke @s only white:move/ink_brush/on_hit
execute if entity @s[tag=white.move.ink_brush.on_kill] run return run tag @s remove white.move.ink_brush.on_kill

tag @s add white.atker

scoreboard players set #apply white.main 0
execute if items entity @s weapon.mainhand *[custom_data~{white:{ink_brush:1b}}] run function white:move/ink_brush/apply/use
execute as @e[type=#white:hostile,distance=..8,nbt={HurtTime:10s}] at @s run function white:move/ink_brush/victim

tag @s remove white.atker