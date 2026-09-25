
#
advancement revoke @s only pink:npc/train_rc

playsound block.dispenser.fail player @s ~ ~ ~ 1 1

# close other
tp @e[tag=pink_npc,tag=!main,tag=!pink_npc.close] ~ ~-100 ~
kill @e[tag=pink_npc,tag=!main,tag=!pink_npc.close]

#
execute in pink:pink_train run tp @s 0 2 0 -90 0

