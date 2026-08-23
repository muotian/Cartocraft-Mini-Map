execute store result score $boss1.players icebird.boss1 at @n[tag=black.boss1_center] if items entity @a[distance=..13] weapon.offhand *[custom_data~{black_core:1b}]
execute if score $boss1.players icebird.boss1 = $players icebird.core run function black:bossfight/boss1/can_start
execute unless score $boss1.players icebird.boss1 = $players icebird.core run function black:bossfight/boss1/cant_start
