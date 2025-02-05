#> int_health:score_observer/death

# 最大体力に戻す
    function int_health:score_observer/limit

    scoreboard players operation @s IntHealth.CurrentHealth = @s IntHealth.MaxHealth

    scoreboard players reset @s IntHealth.DeathCount
