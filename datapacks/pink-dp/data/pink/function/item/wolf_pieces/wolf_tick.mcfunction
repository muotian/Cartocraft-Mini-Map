scoreboard players add @s pink.item.wolf_pieces.life 1

execute if score @s pink.item.wolf_pieces.life matches 100.. run function pink:item/wolf_pieces/wolf_remove


data modify entity @s angry_at set from entity @n[type=!#pink:object,type=!player,type=!wolf] UUID

#
execute as @e[predicate=pink:hurt] on attacker if entity @s[tag=pink.wolf_pieces_wolf] at @s run function pink:item/wolf_pieces/wolf_remove_bite


