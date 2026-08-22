summon block_display ~ ~1 ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:large_amethyst_bud",Properties:{facing:"down"}},transformation:[-1.5000f,0.0000f,0.0000f,0.7500f,-0.0000f,-3.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.5000f,-0.7500f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:[wool_purple.isaiah_amethyst_in]}],Tags:[wool_purple.isaiah_amethyst]}
ride @n[tag=wool_purple.isaiah_amethyst] mount @n[tag=wool_purple.damage.hit,tag=!wool_purple.have_amethyst]
tag @n[tag=wool_purple.damage.hit,tag=!wool_purple.have_amethyst] add wool_purple.have_amethyst
playsound minecraft:block.glass.break player @a ~ ~ ~ 2 1.2
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1.2