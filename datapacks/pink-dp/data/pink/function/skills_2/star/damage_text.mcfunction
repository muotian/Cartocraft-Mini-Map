#
$execute rotated ~ ~ run summon item ^ ^ ^ {Invulnerable:1b,Item:{id:"barrier",components:{item_model:"air",custom_data:{pink_damage_text:1b}}},Tags:["pink_star_damage_motion","new"],PickupDelay:-1,Motion:[$(text_motion_x),$(text_motion_y),$(text_motion_z)]}
$summon text_display ^ ^ ^ {billboard:"center",shadow:0b,text:{"font":"pink:star_number_damage","text":"$(damage_text)"},Tags:["pink_star_damage_text","new"],background:16711680}

ride @n[tag=pink_star_damage_text,tag=new] mount @n[tag=pink_star_damage_motion,tag=new]

tag @n[tag=pink_star_damage_text,tag=new] remove new
tag @n[tag=pink_star_damage_motion,tag=new] remove new
