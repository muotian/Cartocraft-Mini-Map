#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function mini_light:flame_sphere/l1/l1_0
scoreboard players add $7293 cw_particleplot 1
execute if score $7293 cw_particleplot matches 16.. run scoreboard players set $7293 cw_particleplot 0