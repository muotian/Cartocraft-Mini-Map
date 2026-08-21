
tag @s add white.sys.trader
tag @s add white.sys.trader.updated

# ----- Villager ----- #

data merge entity @s {VillagerData: {type: "minecraft:snow", level: 87, profession: "minecraft:librarian"}, attributes: [{id: "movement_speed", base: 0.0}, {id: "max_health", base: 20.0}, {id: "knockback_resistance", base: 1.0}], CustomName: {translate: "entity.white.trader"}}

# ----- Offers ----- #

data merge entity @s {Offers: {Recipes: [\
            {buy: {id: "emerald", count: 1}, buyB: {id: "poisonous_potato", count: 1, components: {item_model: "white:noodle", item_name: {translate: "item.white.noodle_chef.noodle"}}}, sell: {id: "poisonous_potato", count: 1, components: {item_model: "white:sovereign_blade", item_name: {translate: "item.white.sovereign_blade"}, lore: [{text: ""}, {translate: "item.white.sovereign_blade.desc.1", color: "gray", italic: false}, {translate: "item.white.sovereign_blade.desc.2", color: "white", italic: false, with: [{translate: "entity.white.noodle_chef", color: "#ecbaed", bold: true}]}], custom_data: {white: {item: "sovereign_blade"}}, "!consumable": {}, "!food": {}}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 6}, sell: {id: "enchanted_book", count: 1, components: {stored_enchantments: {"white:wither_smite": 1}, lore: [{translate: "item.white.ink_brush.desc.2", color: "white", italic: false}]}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 3}, sell: {id: "enchanted_book", count: 1, components: {stored_enchantments: {"protection": 1}}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 3}, sell: {id: "enchanted_book", count: 1, components: {stored_enchantments: {"power": 1}}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 3}, sell: {id: "enchanted_book", count: 1, components: {stored_enchantments: {"efficiency": 1}}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 3}, sell: {id: "enchanted_book", count: 1, components: {stored_enchantments: {"unbreaking": 1}}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 3}, sell: {id: "enchanted_book", count: 1, components: {stored_enchantments: {"sharpness": 1}}}, maxUses: 114514},\
            {buy: {id: "emerald", count: 1}, sell: {id: "villager_spawn_egg", count: 1, components: {custom_data: {white: {item: "trader_egg"}}, entity_data: {id: "minecraft:villager", Tags: [white.sys.trader]}, item_name: {"translate": "entity.white.trader"}}}, maxUses: 114514}\
        ]}}
