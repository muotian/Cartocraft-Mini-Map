$execute as @e[tag=aj.$(id).entity,tag=!aj.global.root,distance=0..5] run function tools:restore_aj/remove
$function animated_java:$(id)/summon {args:{}}
