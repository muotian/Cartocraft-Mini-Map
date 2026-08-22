#
tag @s add this

execute as @a[tag=hold_pink_magic_staff] if score @s pink.id = @n[tag=this,tag=pink.star2.1] pink.id run tag @n[tag=this,tag=pink.star2.1] add _

execute unless entity @s[tag=_] run function animated_java:pink_star_skill1/remove/this

tag @s remove this
tag @s remove _
