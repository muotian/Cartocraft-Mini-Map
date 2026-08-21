# Minecraft-Simple-Custom-Heal (Fixed Fork)

Super simple custom heal library for Minecraft datapacks.

> **Note:** This is a modified fork of [XanBelOr/Minecraft-Simple-Custom-Heal](https://github.com/XanBelOr/Minecraft-Simple-Custom-Heal), licensed under the MIT License. See [Credits](#credits) below for details on what changed.

# How to use
Call `custom_heal:load` once in your load function, set the target's `c.heal` score, then call `custom_heal:apply_heal` as that player. The score is scaled by 10,000 per HP, so `10000` heals exactly half a heart (1 HP).

This is the full content of [`example_use.mcfunction`](./function/example_use.mcfunction):

```mcfunction
# heal half heart
scoreboard players set @s c.heal 10000
function custom_heal:apply_heal
```

# What's fixed in this fork?

The original implementation only correctly supported the `add_value` attribute modifier operation when temporarily adjusting max health. This meant the heal would behave incorrectly if your datapack's max health modifiers used `add_multiplied_base` or `add_multiplied_total` instead.

This fork fixes that limitation — all three attribute modifier operations (`add_value`, `add_multiplied_base`, and `add_multiplied_total`) are now correctly handled, so the healing amount stays accurate regardless of which operation your max health modifiers use.

# Credits

This project is a fork of [Minecraft-Simple-Custom-Heal](https://github.com/XanBelOr/Minecraft-Simple-Custom-Heal) by **XanBelOr**, originally released under the MIT License.

- **Original author:** [XanBelOr](https://github.com/XanBelOr) — original design and implementation
- **This fork:** [BlueRadio57445](https://github.com/BlueRadio57445) — fixed support for `add_multiplied_base` and `add_multiplied_total` attribute modifier operations

See [LICENSE](./LICENSE) for the full license text.