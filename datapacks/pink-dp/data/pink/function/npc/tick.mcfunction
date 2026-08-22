# Invulnerable
kill @e[distance=..5,type=lightning_bolt]
effect give @s fire_resistance infinite 255 true
effect give @s regeneration infinite 255 true
effect give @s invisibility infinite 0 true
data modify entity @s Fire set value 0

#
execute if entity @s[tag=pink.open_npc,tag=main] unless entity @p[tag=pink.open_npc,distance=..4] run function pink:npc/main/close

## looking
# train
execute unless entity @s[tag=looking_at_train] if entity @p[predicate=pink:npc/looking_at_train] run function pink:npc/train/looking
execute if entity @s[tag=looking_at_train] unless entity @p[predicate=pink:npc/looking_at_train] run function pink:npc/train/no_looking



# talk
execute unless entity @s[tag=looking_at_talk] if entity @p[predicate=pink:npc/looking_at_talk] run function pink:npc/talk/looking
execute if entity @s[tag=looking_at_talk] unless entity @p[predicate=pink:npc/looking_at_talk] run function pink:npc/talk/no_looking

# talk
execute unless entity @s[tag=looking_at_shop] if entity @p[predicate=pink:npc/looking_at_shop] run function pink:npc/shop/looking
execute if entity @s[tag=looking_at_shop] unless entity @p[predicate=pink:npc/looking_at_shop] run function pink:npc/shop/no_looking

# talk
execute unless entity @s[tag=looking_at_close] if entity @p[predicate=pink:npc/looking_at_close] run function pink:npc/close/looking
execute if entity @s[tag=looking_at_close] unless entity @p[predicate=pink:npc/looking_at_close] run function pink:npc/close/no_looking

# talk - me
execute unless entity @s[tag=looking_at_talk.me] if entity @p[predicate=pink:npc/looking_at_talk_me] run function pink:npc/talk/me/looking
execute if entity @s[tag=looking_at_talk.me] unless entity @p[predicate=pink:npc/looking_at_talk_me] run function pink:npc/talk/me/no_looking

# talk - star
execute unless entity @s[tag=looking_at_talk.star] if entity @p[predicate=pink:npc/looking_at_talk_star] run function pink:npc/talk/star/looking
execute if entity @s[tag=looking_at_talk.star] unless entity @p[predicate=pink:npc/looking_at_talk_star] run function pink:npc/talk/star/no_looking

# talk - monster
execute unless entity @s[tag=looking_at_talk.monster] if entity @p[predicate=pink:npc/looking_at_talk_monster] run function pink:npc/talk/monster/looking
execute if entity @s[tag=looking_at_talk.monster] unless entity @p[predicate=pink:npc/looking_at_talk_monster] run function pink:npc/talk/monster/no_looking

# talking
execute as @e[tag=pink_npc.talking] run function pink:npc/talk/talking_tick



# facing
#execute as @s[tag=main] anchored eyes facing entity @p[tag=pink.open_npc] eyes rotated ~ 0 run function pink:npc/facing

execute unless entity @a[tag=pink.open_npc] if entity @s[tag=main] facing entity @p[distance=..8] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^35 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0
#xecute if entity @a[tag=pink.open_npc] if entity @s[tag=main] facing entity @p[distance=..8,tag=pink.open_npc] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0

#
execute if entity @a[distance=..8] as @e[distance=..3,tag=aj.global.bone] run data modify entity @s Glowing set value 0b
execute unless entity @a[distance=..8] as @e[distance=..3,tag=aj.global.bone] run data modify entity @s Glowing set value 1b
