#> int_health:score_observer/limit

# 値未設定のとき
    execute unless score @s IntHealth.MaxHealth = @s IntHealth.MaxHealth run scoreboard players operation @s IntHealth.MaxHealth = #Default IntHealth.MaxHealth

    execute unless score @s IntHealth.CurrentHealth = @s IntHealth.CurrentHealth run scoreboard players operation @s IntHealth.CurrentHealth = @s IntHealth.MaxHealth

# 値が0以下のとき
    execute if score @s IntHealth.MaxHealth matches ..0 run scoreboard players set @s IntHealth.MaxHealth 1

# 最大体力を超えたら戻す
    execute if score @s IntHealth.CurrentHealth > @s IntHealth.MaxHealth run scoreboard players operation @s IntHealth.CurrentHealth = @s IntHealth.MaxHealth
