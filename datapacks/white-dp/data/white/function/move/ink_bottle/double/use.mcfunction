
scoreboard players add @s white.move.ink_bottle.count 1

# if (count >= 10) :
execute if score @s white.move.ink_bottle.count matches 10.. run return run function white:move/ink_bottle/double/2

# else
function white:move/ink_bottle/double/disp_count
return fail