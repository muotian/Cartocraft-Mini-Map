# early return
execute on origin unless entity @s[tag=mini_light.machine_gun] run return fail

# marker
summon marker ~ ~ ~ {Tags:["mini_light.machine_gun_marker","new","mini_light.decoration"]}
data modify entity @n[tag=new,tag=mini_light.machine_gun_marker] data.Motion set from entity @s Motion
execute on origin run ride @n[tag=new,tag=mini_light.machine_gun_marker] mount @s
tag @e[tag=new] remove new

# score
execute on origin run scoreboard players set @s mini_light.machine_gun.cd 3
execute on origin run scoreboard players set @s mini_light.machine_gun.last 4

# 防止生出無限的marker
tag @s add mini_light.token