#> assist:gateway/core/upload

$data modify storage assist:gateway data[{id:$(id)}].pos set from storage assist:gateway temp.pos
$data modify storage assist:gateway data[{id:$(id)}].color set from storage assist:gateway args.color
