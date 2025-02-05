#> int_health:health_bar/to_bar

# 直前の値保存
    execute store result score @s IntHealth.PreviousAttributeValue run attribute @s max_health base get 1000

# 体力を代入
    data modify storage int_health: Value set from storage int_health: BarHealth

    function int_health:health_bar/macro with storage int_health:

    effect give @s instant_health 1 28 true

# 削除
    data remove storage int_health: Value
