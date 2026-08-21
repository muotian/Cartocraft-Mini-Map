execute store success score $tag_detect light_green.main.math run data get entity @s Tags
execute if score $tag_detect light_green.main.math matches 1 run data modify storage light_green:tag tag set from entity @s Tags[0]
execute if score $tag_detect light_green.main.math matches 1 run function light_green:tag/1 with storage light_green:tag
execute store success score $tag_detect light_green.main.math run data get entity @s Tags
execute if score $tag_detect light_green.main.math matches 1 run function light_green:tag/0