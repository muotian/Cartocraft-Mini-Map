scoreboard players operation $index pink.id = @s pink.id
execute on target unless score @s pink.id = $index pink.id run return fail

$execute as @e[tag=pink_skill_slot_$(id),type=item] if score @s pink.id = $temp pink.id if items entity @s container.0 *[custom_data~{pink_magic:1b}] run return fail

# Run
# 改變物品
#
execute on target run tag @s add this_player
summon chest_minecart ~ ~-1000 ~ {Tags:["__"]}


$execute as @n[type=chest_minecart,tag=__] at @s run function pink:skill_slot/as_chest_set {id:$(id)}

# Enchantment
item replace entity @p[tag=this_player] weapon.offhand from entity @n[tag=__,type=chest_minecart] container.0


kill @e[type=chest_minecart,tag=__]
tag @p[tag=this_player] remove this_player

# 
$execute on target unless items entity @s weapon.mainhand *[custom_data~{pink_magic:1b,pink_skill_type:$(id)}] run playsound block.chest.locked player @s ~ ~ ~ 1 1.5

$execute on target if items entity @s weapon.mainhand *[custom_data~{pink_magic:1b,pink_skill_type:$(id)}] run function pink:skill_slot/set2 {id:$(id)}

