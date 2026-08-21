summon marker ^ ^1 ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^ ^-1 ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^1 ^ ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^-1 ^ ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^0.5 ^0.5 ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^0.5 ^-0.5 ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^-0.5 ^0.5 ^1 {Tags:["mini_light.gunpowder_particle"]}
summon marker ^-0.5 ^-0.5 ^1 {Tags:["mini_light.gunpowder_particle"]}

summon marker ^ ^ ^1 {Tags:["mini_light.gunpowder_particle_l"]}

execute as @e[tag=mini_light.gunpowder_particle] at @s facing entity @n[tag=mini_light.gunpowder_particle_l] feet run tp @s ~ ~ ~ ~ ~

kill @e[tag=mini_light.gunpowder_particle_l]
