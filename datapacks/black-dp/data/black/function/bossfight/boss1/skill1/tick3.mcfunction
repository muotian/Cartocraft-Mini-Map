scoreboard players add @s icebird.boss1 1
execute if score @s icebird.boss1 matches 1 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated 0 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 1 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated 0 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 2 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated 45 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 2 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated 45 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 3 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated 90 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 3 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated 90 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 4 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated 135 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 4 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated 135 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 5 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated 180 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 5 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated 180 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 6 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated -135 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 6 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated -135 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 7 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated -90 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 7 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated -90 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
execute if score @s icebird.boss1 matches 8 if score $b1s1.rng2_hard icebird.boss1 matches 1 rotated -45 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_fake_hard
execute if score @s icebird.boss1 matches 8 if score $b1s1.rng2_hard icebird.boss1 matches 2 rotated -45 0 positioned ^ ^1 ^26 summon item_display run function black:bossfight/boss1/skill1/summon_real_hard
kill @s[scores={icebird.boss1=8}]