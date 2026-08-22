execute unless score $guide_display gray.map_event matches 1 if items entity @a weapon.mainhand written_book[custom_data~{guide_book:true}] as @a at @s if items entity @s weapon.mainhand written_book[custom_data~{guide_book:true}] run function ccmini_gray:map/guide/marker/spawn
execute if score $guide_display gray.map_event matches 1 unless items entity @a weapon.mainhand written_book[custom_data~{guide_book:true}] run function ccmini_gray:map/guide/marker/remove

execute if score $state gray.map_event matches 1 as @a if items entity @s weapon.mainhand written_book[custom_data~{guide_book:true}] if items entity @s weapon.mainhand written_book[!minecraft:custom_data~{guide_state:1}] run item modify entity @s weapon.mainhand ccmini_gray:guide_1
execute if score $state gray.map_event matches 2 as @a if items entity @s weapon.mainhand written_book[custom_data~{guide_book:true}] if items entity @s weapon.mainhand written_book[!minecraft:custom_data~{guide_state:2}] run item modify entity @s weapon.mainhand ccmini_gray:guide_2
execute if score $state gray.map_event matches 3 as @a if items entity @s weapon.mainhand written_book[custom_data~{guide_book:true}] if items entity @s weapon.mainhand written_book[!minecraft:custom_data~{guide_state:3}] run item modify entity @s weapon.mainhand ccmini_gray:guide_3
execute if score $state gray.map_event matches 4 as @a if items entity @s weapon.mainhand written_book[custom_data~{guide_book:true}] if items entity @s weapon.mainhand written_book[!minecraft:custom_data~{guide_state:4}] run item modify entity @s weapon.mainhand ccmini_gray:guide_4
execute if score $state gray.map_event matches 5 as @a if items entity @s weapon.mainhand written_book[custom_data~{guide_book:true}] if items entity @s weapon.mainhand written_book[!minecraft:custom_data~{guide_state:5}] run item modify entity @s weapon.mainhand ccmini_gray:guide_5

execute if score $state gray.map_event matches 4 as @e[type=item_display,tag=aj.gray_guide.root,limit=1] at @e[type=parched,tag=gray.boss.hitbox,limit=1] positioned ~ ~2.5 ~ run tp @s ~ ~ ~
execute if score $state gray.map_event matches 4 as @e[type=item_display,tag=aj.gray_guide.root,limit=1] at @e[type=parched,tag=gray.boss.after_battle.hitbox,limit=1] positioned ~ ~2.5 ~ run tp @s ~ ~ ~

execute as @a if items entity @a weapon.mainhand written_book[custom_data~{guide_book:true}] run scoreboard players enable @s gray.guide_input
execute as @a unless items entity @a weapon.mainhand written_book[custom_data~{guide_book:true}] run scoreboard players reset @s gray.guide_input

execute as @a if score @s gray.guide_input matches 1.. run function ccmini_gray:map/guide/rotate