
execute if function white:move/ink_bottle/bottle/hitbox run function white:move/ink_bottle/bottle/hit

kill @s

# fx
execute if score #is_double white.main matches 1 run return run function white:move/ink_bottle/bottle/2c
function white:move/ink_bottle/bottle/2b