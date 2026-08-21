# Index into the correct bucket
$function white:sys/player/motion/internal/convert_from_legacy/bucket/$(index)
# Restore sign to impulse output & return its value
return run scoreboard players operation #crystal white.motion.internal.dummy *= #sign white.motion.internal.dummy