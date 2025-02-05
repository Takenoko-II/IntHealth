# IntHealth

プレイヤーの体力をスコアボードで管理するデータパック

## 基本仕様
- デフォルトでは、プレイヤーは一切のダメージを受けなくなります
- スコアボードの操作と関数の呼び出しによってのみ体力は管理されます
- 体力は数値としてactionbarに表示されます
- 体力バーは割合に基づいてスコアボードと同期されます

> [!Note]
> 「IntHealth」の名のとおり、非整数値のダメージは負の方向に丸められます
> <br>int型のどのような値も利用可能にするために、小数のダメージには対応させていません

###
特定のプレイヤーについてデータパックを有効化する

### ダメージを与える
ダメージを受けるプレイヤーを`<Player>`とします:
```mcfunction
# <Player> は7ダメージを受ける

scoreboard players set $Damage IntHealth.Input 7

execute as <Player> run function int_health:update
```

### 体力を特定の値に変更する
変更を受けるプレイヤーを`<Player>`とします:
```mcfunction
# <Player> の体力は15になる

scoreboard players set <Player> IntHealth.CurrentHealth 15

execute as <Player> run function int_health:update
```

### 最大体力の変更
変更を受けるプレイヤーを`<Player>`とします:
```mcfunction
# <Player> の最大体力は50になる

scoreboard players set <Player> IntHealth.MaxHealth 50

execute as <Player> run function int_health:update
```

### 回復(おまけ)
[ダメージを与える](#ダメージを与える)にて、値を負に設定すると回復します:
```mcfunction
# <Player> は3回復する

scoreboard players set $Damage IntHealth.Input -3

execute as <Player> run function int_health:update
```

## タグ・オブジェクティブ・関数詳細

### タグ

#### `IntHealth.Synchronized`
このタグを持つプレイヤーは、バニラのダメージを受けたとき自動的に[基本操作／ダメージを与える](#ダメージを与える)の操作を実行します
<br>つまり、このタグを持つプレイヤーはバニラのダメージを受け付けるようになります

#### `IntHealth.ActionbarDisabled`
このタグを持つプレイヤーは、actionbarに体力の情報が表示されなくなります

#### `IntHealth.ShowEmptyHearts`
このタグを持つプレイヤーは体力バーに空のハートが表示されます

#### `IntHealth.Enabled`
このタグを持つプレイヤーは体力がデータパックの管理下に置かれます

### オブジェクティブ

#### `IntHealth.CurrentHealth`
現在の体力を表現するスコアボードです
<br>有効範囲: `-2147483648～2147483647`

#### `IntHealth.MaxHealth`
現在の最大体力を表現するスコアボードです
<br>有効範囲: `1～2147483647`

#### `IntHealth.Input`
関数 `int_health:update` を呼び出す直前にダミープレイヤー `$Damage` に値を設定しておくことで、`scoreboard players operation`を使わずともダメージを与えた上で体力バーの表示を更新してくれます
<br>有効範囲: `-2147483648～2147483647`

### 関数

#### `int_health:update`
この関数の実行者となるエンティティのスコアボードの値の範囲チェックを即座に実行し、実行者の体力バーをスコアボードの値と同期します
> [!Caution]
> 毎tick呼び出すとMinecraftの属性値更新タイミングが遅いことが影響して体力の表示がバグります

## ライセンス
[MIT LICENSE](/LICENSE)

## 作成者／連絡
Twitter(X): [@Takenoko_4096](https://x.com/Takenoko_4096)
Discord: takenoko_4096
