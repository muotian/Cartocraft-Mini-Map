execute if score story red_wool.chat matches 1 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.1", color : white}]
execute if score story red_wool.chat matches 2 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.2", color : white}]
execute if score story red_wool.chat matches 3 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.3", color : white}]
execute if score story red_wool.chat matches 4 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.4", color : white}]
execute if score story red_wool.chat matches 5 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.5", color : white}]
execute if score story red_wool.chat matches 6 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.6", color : white}]
execute if score story red_wool.chat matches 7 run tellraw @a [{"text":"[ ", color:gold},{"translate":"red_wool.villager.1"}," ] : ",{"translate":"red_wool.story.7", color : white}]

execute as @a at @s run playsound entity.villager.ambient block @s ~ ~ ~ 1.0 1.0 1.0
scoreboard players add story red_wool.chat 1
execute if score story red_wool.chat matches ..7 run schedule function red_wool:npc/headman/story 1s