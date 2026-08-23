playsound entity.allay.ambient_with_item ambient @a ~ ~ ~ 10 1
execute unless score count icer.pyrowind_fragment matches 0.. run dialog show @a icer:apart_treant
execute if score count icer.pyrowind_fragment matches ..1 run dialog show @a icer:apart_treant
execute if score count icer.pyrowind_fragment matches 2.. run dialog show @a icer:all_treant
data remove entity @n[tag=icer.story_interaction] interaction
