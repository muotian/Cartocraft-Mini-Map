
scoreboard players add @s white.move.muse.duration 1

execute if score @s white.move.muse.duration matches 60.. run function white:move/muse/2
execute unless items entity @s weapon.offhand *[custom_data~{white:{item:muse}}] run function white:move/muse/equip/false

# fx
scoreboard players operation #self white.main = @s white.player.id
execute rotated ~ 0 anchored eyes positioned ^1 ^1 ^ as @e[tag=white.move.muse.ball,type=text_display,predicate=white:player/is_owner,limit=1] run tp ~ ~ ~