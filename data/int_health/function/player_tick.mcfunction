#> int_health:player_tick

# 耐性付与
    effect give @s resistance 1 4 true

# ダメージをスコアに変換
    execute if score @s[tag=IntHealth.Synchronized] IntHealth.DamageResisted matches 1.. run function int_health:score_observer/on_resist_damage

# 値の制限
    function int_health:score_observer/limit

# 表示
    title @s[tag=!IntHealth.ActionbarDisabled] actionbar [ \
        {"text": "❤", "color": "red", "bold": false}, \
        {"score": {"name": "@s", "objective": "IntHealth.CurrentHealth"}, "color": "gold", "bold": false}, \
        {"text": "❤", "color": "red", "bold": false} \
    ]

# 死んだとき
    execute if score @s IntHealth.DeathCount matches 1.. run function int_health:score_observer/death

# 自然回復の阻止
    execute if data entity @s[tag=IntHealth.ShowEmptyHearts] {foodLevel: 20} run effect give @s hunger infinite 127 true

    execute unless data entity @s[tag=IntHealth.ShowEmptyHearts] {foodLevel: 20} run effect clear @s hunger
