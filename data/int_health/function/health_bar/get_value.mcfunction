#> int_health:health_bar/get_value

# 最大体力との割合を算出
    function int_health:score_observer/limit

    execute store result storage int_health: Divide.Input.X float 1 run scoreboard players get @s IntHealth.CurrentHealth

    execute store result storage int_health: Divide.Input.Y float 1 run scoreboard players get @s IntHealth.MaxHealth

    function int_health:health_bar/divide

# バーに表示すべき値を取得
    execute store result storage int_health: Multiply.Input.X float 0.001 run attribute @s max_health base get 1000

    data modify storage int_health: Multiply.Input.Y set from storage int_health: Divide.Output

    function int_health:health_bar/multiply

# ストレージに入れておく
    data modify storage int_health: BarHealth set from storage int_health: Multiply.Output

# 0はまずい
    execute if data storage int_health: {BarHealth: 0f} run data modify storage int_health: BarHealth set value 1f

# 削除
    data remove storage int_health: Multiply

    data remove storage int_health: Divide
