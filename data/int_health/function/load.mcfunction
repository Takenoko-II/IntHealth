#> int_health:load

# オブジェクティブ定義
    scoreboard objectives add IntHealth.DamageResisted minecraft.custom:damage_resisted

    scoreboard objectives add IntHealth.DeathCount minecraft.custom:deaths

    scoreboard objectives add IntHealth.CurrentHealth dummy

    scoreboard objectives add IntHealth.MaxHealth dummy

    scoreboard objectives add IntHealth.PreviousAttributeValue dummy

    scoreboard objectives add IntHealth.Input dummy

# 最大体力のデフォルト値
    scoreboard players set #Default IntHealth.MaxHealth 20

# load
    forceload add 0 0
