#
advancement revoke @s only pink:npc/talking_rc

playsound block.dispenser.fail player @s ~ ~ ~ 1 1

# break


# con
execute if entity @n[tag=pink_npc.talking] run tag @s add is_talking

execute unless entity @s[tag=is_talking] run function pink:npc/talk/talk_con
execute if entity @s[tag=is_talking] run function pink:npc/talk/talk_pass

tag @s[tag=is_talking] remove is_talking


#
execute if score $talk pink.npc.talk matches 2 if score $line pink.npc.talk matches 4 run function pink:npc/talk/monster/item


