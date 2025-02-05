#> int_health:score_observer/on_resist_damage

# ダメージに変換
    scoreboard players operation $Damage IntHealth.Input = @s IntHealth.DamageResisted

    scoreboard players set #10 IntHealth.Input 10

    scoreboard players operation $Damage IntHealth.Input /= #10 IntHealth.Input

    scoreboard players reset #10 IntHealth.Input

    function int_health:update
