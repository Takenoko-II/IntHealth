#> int_health:reset_max_health

# 元の属性値を代入
    execute store result storage int_health: Value float 0.001 run scoreboard players get @s IntHealth.PreviousAttributeValue

    function int_health:health_bar/macro with storage int_health:

# 削除
    data remove storage int_health: Value

    scoreboard players reset @s IntHealth.PreviousAttributeValue
