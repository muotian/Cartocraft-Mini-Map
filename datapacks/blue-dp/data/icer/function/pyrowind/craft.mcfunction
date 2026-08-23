tag @s remove icer.holding_heart
#清除拿著道具的tag

clear @s *[custom_data~{heart_of_pyrowind: 1b}] 1
#清掉玩家的背包的心臟

loot replace entity @s player.cursor loot ordered_splinter:weapon/pyrowind_longsword
#把玩家滑鼠拿著的劍替換成升級過的劍

playsound block.anvil.use ambient @a ~ ~ ~
playsound entity.blaze.shoot ambient @a ~ ~ ~
#播放音效