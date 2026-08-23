scoreboard players add #elytra_change icebird.core 1
execute if score #elytra_change icebird.core matches 140 run scoreboard players add #elytra_change2 icebird.core 1

execute if score #elytra_change2 icebird.core matches 1 run function black:item/elytra/particle
execute if score #elytra_change2 icebird.core matches 2 run function black:item/elytra/particle2
execute if score #elytra_change2 icebird.core matches 3 run function black:item/elytra/particle3
execute if score #elytra_change2 icebird.core matches 4 run function black:item/elytra/particle4
execute if score #elytra_change2 icebird.core matches 5 run function black:item/elytra/particle5
execute if score #elytra_change2 icebird.core matches 6 run function black:item/elytra/particle6
execute if score #elytra_change2 icebird.core matches 7 run function black:item/elytra/particle7
execute if score #elytra_change2 icebird.core matches 8 run scoreboard players set #elytra_change2 icebird.core 1
execute if score #elytra_change icebird.core matches 300.. run scoreboard players set #elytra_change icebird.core 0