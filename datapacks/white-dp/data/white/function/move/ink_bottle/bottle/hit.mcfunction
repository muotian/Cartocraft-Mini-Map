
execute if score #is_double white.main matches 0 run data modify storage white:temp dmg set value {value:"8 white:move/ink_bottle",func:"white:move/ink_bottle/bottle/victim"}
execute if score #is_double white.main matches 1 run data modify storage white:temp dmg set value {value:"16 white:move/ink_bottle",func:"white:move/ink_bottle/bottle/victim"}
function white:sys/dmg/atker