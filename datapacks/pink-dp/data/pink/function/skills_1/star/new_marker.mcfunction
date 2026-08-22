execute unless score @s pink._star.marker matches 1.. run return fail

summon text_display ^ ^ ^ {billboard:"center",shadow:0b,text:{"font":"pink:star_number","text":"1"},Tags:["pink_star_marker","new"],background:16711680}

ride @n[tag=pink_star_marker,tag=new,type=text_display] mount @s
tag @n[tag=pink_star_marker,tag=new,type=text_display] remove new
