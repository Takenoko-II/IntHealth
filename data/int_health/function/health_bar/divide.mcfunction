#> int_health:divide

# /
    summon item_display 0 0 0 {Tags: ["IntHealth.Display.Divide"]}

    data modify storage int_health: Divide.Matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]

    data modify storage int_health: Divide.Matrix[3] set from storage int_health: Divide.Input.X

    data modify storage int_health: Divide.Matrix[15] set from storage int_health: Divide.Input.Y

    data modify entity @n[tag=IntHealth.Display.Divide] transformation set from storage int_health: Divide.Matrix

    data modify storage int_health: Divide.Output set from entity @n[tag=IntHealth.Display.Divide] transformation.translation[0]

    kill @n[tag=IntHealth.Display.Divide]
