stopsound @a record light_green:fight_music-big_hoglin-1
stopsound @a record light_green:fight_music-big_hoglin-2
kill @e[tag=light_green.blood]
kill @e[tag=light_green.mud]
kill @e[tag=light_green.drop_dirt]
execute as @n[tag=aj.big_hoglin.root,type=item_display] run function animated_java:big_hoglin/remove/this
execute as @n[tag=aj.big_hoglin_head.root,type=item_display] run function animated_java:big_hoglin_head/remove/this
function light_green:arena/difficulty/return
kill @e[tag=light_green.boss.big_hoglin.target]
kill @e[tag=light_green.boss.big_hoglin.facing]
kill @e[tag=light_green.boss.big_hoglin]
execute as @a[tag=light_green.boss.challenger] run tag @s remove light_green.mud_apply
execute as @a[tag=light_green.boss.challenger] run tag @s remove light_green.blood_apply