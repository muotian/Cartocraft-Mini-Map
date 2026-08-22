tag @s remove pink_npc.talking
scoreboard players set $cd pink.npc.talk 0

# break
$execute if score $line pink.npc.talk matches $(max_line).. as @n[tag=pink_npc,tag=main] at @s anchored eyes run function pink:npc/talk/talk_summon

#
$data modify storage pink:npc_talk talk append value {translate:"npc.pink.talk1.$(type)_$(line).$(text)"}
data modify entity @s text set from storage pink:npc_talk talk

scoreboard players add $text pink.npc.talk 1
$execute if score $text pink.npc.talk matches $(line_text).. run scoreboard players add $line pink.npc.talk 1
$execute if score $text pink.npc.talk matches $(line_text).. run scoreboard players set $text pink.npc.talk 1
execute store result storage pink:npc_talk text int 1 run scoreboard players get $text pink.npc.talk
execute store result storage pink:npc_talk line int 1 run scoreboard players get $line pink.npc.talk

$execute unless data storage pink:npc_talk {pass:1} if score $text pink.npc.talk matches ..$(line_text) unless score $line pink.npc.talk matches $(max_line).. if score $line pink.npc.talk matches $(line) run tag @s add pink_npc.talking
$execute if data storage pink:npc_talk {pass:1} if score $text pink.npc.talk matches ..$(line_text) unless score $line pink.npc.talk matches $(max_line).. if score $line pink.npc.talk matches $(line) run function pink:npc/talk/talking1 with storage pink:npc_talk {}
data modify storage pink:npc_talk pass set value 0

$execute unless data storage pink:npc_talk {pass:1} if score $text pink.npc.talk matches ..$(line_text) unless score $line pink.npc.talk matches $(max_line).. if score $line pink.npc.talk matches $(line) run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 0.8 1.5

#



