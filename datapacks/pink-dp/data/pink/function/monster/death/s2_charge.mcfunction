#
playsound minecraft:entity.warden.roar player @a[distance=..15] ~ ~ ~ 1 1.5
playsound minecraft:block.respawn_anchor.charge player @a[distance=..15] ~ ~ ~ 0.5 1.8

effect give @s invisibility infinite 0 true
effect give @s slowness infinite 100 true
effect give @s resistance infinite 0 true

scoreboard players set $charge pink.monster.death.skill 23
scoreboard players set $cd pink.monster.death.skill 99999

item replace entity @s armor.chest with netherite_chestplate[trim={pattern:silence,material:redstone},enchantment_glint_override=true]

