execute as @e[type=parched,tag=gray.boss.hitbox] run tp ~ -1000 ~
kill @e[type=parched,tag=gray.boss.hitbox]
execute as @e[type=item_display,tag=aj.gray_battle_boss_head.root] run function animated_java:gray_battle_boss_head/remove/this
execute as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run function animated_java:gray_battle_boss_body/remove/this
execute as @e[type=item_display,tag=aj.gray_battle_boss_feet.root] run function animated_java:gray_battle_boss_feet/remove/this
execute as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] run function animated_java:gray_battle_boss_weapon/remove/this