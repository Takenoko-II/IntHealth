#> int_health:score_observer/death

# 最大体力に戻す
    function int_health:score_observer/limit

    scoreboard players operation @s IntHealth.CurrentHealth = @s IntHealth.MaxHealth

    scoreboard players reset @s IntHealth.DeathCount

    execute store result storage int_health: Value float 1 run scoreboard players get #Default IntHealth.MaxHealth

    execute unless entity @s[tag=IntHealth.ShowEmptyHearts] run function int_health:health_bar/macro with storage int_health:

    data remove storage int_health: Value
