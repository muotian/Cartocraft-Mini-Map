# Skill1
#$data modify storage pink:skill_store skill1_temp set from storage pink:skill_store skill1[$(skill1_temp)]


#$
#$data modify entity @n[tag=pink_skill_slot_2,tag=new,type=item] Item set from storage pink:skill_store skill2[$(skill2_temp)]
#$data modify entity @n[tag=pink_skill_slot_3,tag=new,type=item] Item set from storage pink:skill_store skill3[$(skill3_temp)]

$execute unless data storage pink:skill_store {skill1_temp:-1} run data modify entity @n[tag=pink_skill_slot_1,tag=new,type=item] Item set from storage pink:skill_store skill1[$(skill1_temp)]
$execute unless data storage pink:skill_store {skill2_temp:-1} run data modify entity @n[tag=pink_skill_slot_2,tag=new,type=item] Item set from storage pink:skill_store skill2[$(skill2_temp)]
$execute unless data storage pink:skill_store {skill3_temp:-1} run data modify entity @n[tag=pink_skill_slot_3,tag=new,type=item] Item set from storage pink:skill_store skill3[$(skill3_temp)]


data remove storage pink:skill_store skill1_temp
data remove storage pink:skill_store skill2_temp
data remove storage pink:skill_store skill3_temp


# Skill2

