execute if entity @s[tag=pink.look] run function pink:skill_slot/glow


# Item
execute if predicate pink:can_rc run item modify entity @s weapon.offhand pink:no_rc


#
execute if predicate pink:look_at_skill_slot_1 run function pink:skill_slot/skill1_look {id:1,name:"attack"}
execute if predicate pink:look_at_skill_slot_2 run function pink:skill_slot/skill1_look {id:2,name:"skill"}
execute if predicate pink:look_at_skill_slot_3 run function pink:skill_slot/skill1_look {id:3,name:"ultimate_skill"}

#



