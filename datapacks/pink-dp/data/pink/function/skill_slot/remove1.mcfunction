scoreboard players operation $index pink.id = @s pink.id
execute on attacker unless score @s pink.id = $index pink.id run return fail

# Run

# 改變物品
$execute as @e[tag=pink_skill_slot_$(id),type=item] if score @s pink.id = $temp pink.id run tag @s add this
execute on attacker run tag @s add this_player
summon chest_minecart ~ ~-1000 ~ {Tags:["__"]}

$execute as @n[tag=__] at @s run function pink:skill_slot/as_chest_remove {id:$(id)}



#
execute as @e[tag=this,type=item] if items entity @s container.* *[custom_data~{pink_magic:1b}] run function pink:skill_slot/remove




