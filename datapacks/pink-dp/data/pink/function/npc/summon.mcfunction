#
summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["pink_npc","main"]}
function animated_java:pink_npc/summon {args: {animation: 'idle', start_animation: true}}

ride @n[tag=aj.pink_npc] mount @n[tag=pink_npc,tag=main]
