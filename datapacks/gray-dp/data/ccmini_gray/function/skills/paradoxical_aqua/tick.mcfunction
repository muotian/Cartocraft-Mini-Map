


#給玩家抗性
execute on passengers if entity @s[type=player] run effect give @s resistance 1 3 true
execute on passengers if entity @s[type=player] at @s if score @s gray.player.hurt matches 1 run function ccmini_gray:skills/paradoxical_aqua/clear_potion

#自動消除
execute on passengers if entity @s[type=player] unless items entity @s container.* potion[potion_contents={potion:water}] on vehicle run function ccmini_gray:skills/paradoxical_aqua/remove
execute on passengers if entity @s[type=player] unless items entity @s weapon.offhand music_disc_13[custom_data={paradoxical_aqua:true}] on vehicle run function ccmini_gray:skills/paradoxical_aqua/remove
#主動消除
execute on passengers if entity @s[type=player] on vehicle run return fail
function ccmini_gray:skills/paradoxical_aqua/remove