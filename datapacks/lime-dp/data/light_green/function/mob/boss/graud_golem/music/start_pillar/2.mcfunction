place template light_green:pillar ~ ~ ~ counterclockwise_90
execute positioned ^2 ^ ^-2 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 1 0.5 1 2 5000 force
playsound block.anvil.land hostile @a ~ ~ ~ 4 0