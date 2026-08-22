execute as @e[type=#cyan:fireaxe,distance=..3] run damage @s 6
tp @s ^ ^ ^.4
scoreboard players add @s cyan.bullet 1
kill @s[scores={cyan.bullet=80..}]