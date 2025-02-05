#> int_health:tick

# 体力バーの最大値を元に戻す
    execute as @a[scores={IntHealth.PreviousAttributeValue=0..}] run function int_health:health_bar/reset_max_health

# 対象のプレイヤー限定で処理
    execute as @a[tag=IntHealth.Enabled] run function int_health:player_tick

# バーに代入
    execute as @a[tag=IntHealth.DamageApplied] run function int_health:health_bar/

#リセット
    scoreboard players reset @a IntHealth.DamageResisted

    tag @a remove IntHealth.DamageApplied

# このコマンドを削除すると新たに参加したプレイヤーにこのデータパックが適用されなくなります
    tag @a add IntHealth.Enabled
