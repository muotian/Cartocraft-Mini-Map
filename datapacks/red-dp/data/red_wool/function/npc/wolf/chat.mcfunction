execute if score wolf red_wool.chat matches 1 run tellraw @a {"translate":"red_wool.wolf.lore.1"}
execute if score wolf red_wool.chat matches 2 run tellraw @a {"translate":"red_wool.wolf.lore.2"}
execute if score wolf red_wool.chat matches 3 run tellraw @a {"translate":"red_wool.wolf.lore.3"}
execute if score wolf red_wool.chat matches 4 run tellraw @a {"translate":"red_wool.wolf.lore.4"}

execute as @a at @s run playsound entity.wolf_angry.growl block @s ~ ~ ~ 1.0 1.0 1.0
scoreboard players add wolf red_wool.chat 1
execute if score wolf red_wool.chat matches ..4 run schedule function red_wool:npc/wolf/chat 2s