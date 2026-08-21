
# right click
execute if score @s white.right_click.duration matches 1.. run scoreboard players add @s white.right_click.duration.detect 1
execute unless score @s white.right_click.duration = @s white.right_click.duration.detect run function white:sys/player/right_click/clear

# mined spawner
execute if score @s white.mined_spawner matches 1.. run function white:sys/player/mined_spawner/use

# decorate item
execute if predicate white:player if predicate white:player/has_decorate_item run function white:sys/player/decorate_item

## ----- Move ----- ##

# cooldown
execute if score @s white.move.watercolor.cd matches 1.. run scoreboard players remove @s white.move.watercolor.cd 1
execute if score @s white.move.flute.cd matches 1.. run scoreboard players remove @s white.move.flute.cd 1
execute if score @s white.move.ink_bottle.cd matches 1.. run function white:move/ink_bottle/cooldown/main
execute if score @s white.move.temptation.cd matches 1.. run function white:move/temptation/cooldown/main
execute if score @s white.move.goodnight.cd matches 1.. run scoreboard players remove @s white.move.goodnight.cd 1
execute if score @s white.move.phineas.cd matches 1.. run scoreboard players remove @s white.move.phineas.cd 1
execute if score @s white.move.rosin.cd matches 1.. run scoreboard players remove @s white.move.rosin.cd 1
execute if score @s white.move.liuhsu.cd matches 1.. run function white:move/liuhsu/cooldown/main

# muse
execute if items entity @s weapon.offhand *[custom_data~{white:{item:muse}}] unless entity @s[tag=white.move.muse] run function white:move/muse/equip/true
execute if entity @s[tag=white.move.muse] run function white:move/muse/main

# goodnight
execute if function white:move/goodnight/is_trigger run function white:move/goodnight/main
execute if score @s white.move.goodnight.duration matches 1.. unless function white:move/goodnight/is_trigger run scoreboard players reset @s white.move.goodnight.duration

# phineas (you know... 飛哥 = 飛鴿)
execute if items entity @s weapon.offhand *[custom_data~{white:{item:phineas}}] if predicate white:flags/is_sneak if score @s white.jump matches 1.. run function white:move/phineas/use

# rosin
execute if entity @s[tag=white.move.rosin.on_hit] run function white:move/rosin/buff/false
execute unless score @s white.move.rosin.cd matches 1.. if items entity @s weapon.offhand *[custom_data~{white:{item:rosin}}] unless items entity @s weapon.offhand *[custom_data~{white:{rosin:true}}] run function white:move/rosin/buff/true

# crayon boots
execute if items entity @s armor.feet *[custom_data~{white:{item:crayon_boots}}] run function white:move/crayon_boots/main
execute if entity @s[tag=white.move.crayon_boots] unless items entity @s armor.feet *[custom_data~{white:{item:crayon_boots}}] run function white:move/crayon_boots/equip/false

# (liu) >u< --> **POWER** <-- >u< (hsu)
execute if items entity @s armor.chest *[custom_data~{white:{item:"liuhsu"}}] if entity @a[predicate=white:move/liuhsu,distance=0.01..9,limit=1] run return run function white:move/liuhsu/close/use
execute if entity @s[tag=white.move.liuhsu.close] if function white:move/liuhsu/close/is_clear run return run function white:move/liuhsu/close/clear

# prism oath
execute if predicate white:flags/is_sneak if entity @s[x_rotation=85.0..90.0] if entity @e[predicate=white:sys/is_prism_oath,type=item,distance=..1,limit=1] run function white:move/prism_oath/detailed_desc

## ----- Move ----- ##

# reset
scoreboard players reset @s white.jump