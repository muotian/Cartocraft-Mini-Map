#
$scoreboard players set $m$(id) pink.npc.talk 1

$execute if items entity @s weapon.mainhand *[custom_data~{id:1b}] run scoreboard players set $m$(id)_id pink.npc.talk 1
$execute if items entity @s weapon.mainhand *[custom_data~{id:2b}] run scoreboard players set $m$(id)_id pink.npc.talk 2

$execute as @n[tag=pink_npc,tag=m$(id)] at @s run function pink:npc/talk/monster/put_change {id:$(id)}

item replace entity @s weapon.mainhand with air

#
execute positioned as a7-0-0-0-0 run execute if score $m1 pink.npc.talk matches 1 if score $m2 pink.npc.talk matches 1 positioned ~11.39 ~67.00 ~-27.43 run function pink:npc/room/animation
