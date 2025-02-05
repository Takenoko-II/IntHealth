#> int_health:damage
#
# @input
#   storage int_health:
#       Damage: int
#
#

# Damageがなければ0として扱う
    execute unless score $Damage IntHealth.Input = $Damage IntHealth.Input run scoreboard players set $Damage IntHealth.Input 0

# 引き算
    scoreboard players operation @s IntHealth.CurrentHealth -= $Damage IntHealth.Input

# 0以下なら殺す
    execute if score @s IntHealth.CurrentHealth matches ..0 run kill

# 制限
    function int_health:score_observer/limit

# タグ
    tag @s add IntHealth.DamageApplied

# 削除
    scoreboard players reset $Damage IntHealth.Input
