scoreboard players operation $index pink.id = @s pink.id
$execute as @e[tag=pink_skill_slot_$(id),type=item] if score @s pink.id = $temp pink.id run tag @s add this


# 
item replace entity @n[tag=this,type=item] container.0 from entity @s weapon.mainhand
item modify entity @s weapon.mainhand pink:count-1
data modify entity @n[tag=this,type=item] Item.count set value 1

playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.2 0
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1

particle minecraft:end_rod ~ ~.25 ~ 0 0 0 .05 5
particle smoke ~ ~.25 ~ 0.2 0.2 0.2 0 10

tag @e[tag=this,tag=pink_skill_slot,type=item] remove this



