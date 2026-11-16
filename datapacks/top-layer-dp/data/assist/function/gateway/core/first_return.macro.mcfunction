#> assist:gateway/core/first_return.macro

$data modify storage assist:gateway args.color set from storage assist:gateway data[{id:$(index)}].color
$data modify block ~ ~ ~ exit_portal set from storage assist:gateway data[{id:$(index)}].pos
