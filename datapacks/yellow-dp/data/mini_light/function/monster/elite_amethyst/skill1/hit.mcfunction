$effect give @a[distance=..$(dis)] slowness 3 2 false
$execute as @a[distance=..$(dis)] run damage @s 6 mini_light:elite_amethyst

$execute positioned ~ ~1 ~ rotated ~ ~ run function tagvillx:monster/elite_amethyst/skill1/particle {dis:$(dis)}
$execute positioned ~ ~1 ~ rotated ~90 ~ run function tagvillx:monster/elite_amethyst/skill1/particle {dis:$(dis)}
$execute positioned ~ ~1 ~ rotated ~180 ~ run function tagvillx:monster/elite_amethyst/skill1/particle {dis:$(dis)}
$execute positioned ~ ~1 ~ rotated ~360 ~ run function tagvillx:monster/elite_amethyst/skill1/particle {dis:$(dis)}


#
playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 1 0
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 0

#
effect give @s speed 5 0 true
effect give @s strength 5 0 true

tag @s remove mini_light.cast
