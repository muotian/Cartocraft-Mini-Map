execute unless entity 0-0-0-0-1 run summon marker 0. 0. 0. {UUID: [I; 0, 0, 0, 1]}
execute in dungeon:forest/abandoned_mine unless entity 0-0-0-0-1 run summon item_display 0. 0. 0. {UUID: [I; 0, 0, 0, 1]}

execute in overworld unless entity 0-0-0-0-2 run summon item_display 0. 0. 0. {UUID: [I; 0, 0, 0, 2],view_range:0}
execute in dungeon:forest/abandoned_mine unless entity 0-0-0-0-2 run summon item_display 0. 0. 0. {UUID: [I; 0, 0, 0, 2],view_range:0}