scoreboard players set $global monu_complete_flag 1
scoreboard players set $global monu_complete_step 0

data modify storage monu:complete fw set from storage monu:points white

schedule function monu:wool/complete_firework_scheduled 1t
