tag @a remove cyan.norla
tag @a[distance=..5] add cyan.norla
tag @a[tag=!cyan.norla] remove cyan.w
execute as @a[tag=cyan.norla,tag=!cyan.w] run function cyan:norla_w
execute as @a[scores={cyan.norla=1..}] run function cyan:norla_q
scoreboard players set @a cyan.norla 0