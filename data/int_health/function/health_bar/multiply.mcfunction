#> int_health:multiply

# *
    summon item_display 0 0 0 {Tags: ["IntHealth.Display.Multiply"]}

    data modify storage int_health: Multiply.Matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]

    data modify storage int_health: Multiply.Matrix[3] set from storage int_health: Multiply.Input.X

    data modify storage int_health: Divide.Input.X set value 1f

    data modify storage int_health: Divide.Input.Y set from storage int_health: Multiply.Input.Y

    function int_health:health_bar/divide

    data modify storage int_health: Multiply.Matrix[15] set from storage int_health: Divide.Output

    data modify entity @n[tag=IntHealth.Display.Multiply] transformation set from storage int_health: Multiply.Matrix

    data modify storage int_health: Multiply.Output set from entity @n[tag=IntHealth.Display.Multiply] transformation.translation[0]

    kill @n[tag=IntHealth.Display.Multiply]
