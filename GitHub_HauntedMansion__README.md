# Haunted Mansion

Godot Engine 4.x で制作している 3D 一人称ホラーゲームです。

## ゲーム概要

古い屋敷を探索し、屋敷内に隠された鍵を見つけて出口から脱出することを目標にしています。

現在はプロトタイプ段階です。今後、敵AI・サウンド・照明・イベント演出・複数の部屋などを追加していく予定です。

## 操作

- `WASD`：移動
- マウス：視点移動
- `E`：調べる / 操作
- `F`：懐中電灯 ON / OFF
- `ESC`：マウスカーソルを解除

## 必要環境

- Godot Engine 4.x

## 起動方法

1. このリポジトリを GitHub から clone します。
2. Godot Engine 4.x を起動します。
3. `project.godot` を Import / Open します。
4. `Main.tscn` をメインシーンとして実行します。

## フォルダ構成

```text
HauntedMansion/
├─ project.godot
├─ README.md
├─ .gitignore
├─ scenes/
│  └─ Main.tscn
├─ scripts/
│  ├─ bootstrap.gd
│  ├─ door.gd
│  ├─ exit.gd
│  ├─ game_manager.gd
│  ├─ key.gd
│  └─ player.gd
└─ assets/
```

## 開発状況

- [x] 3D一人称操作
- [x] 屋敷の基本ステージ
- [x] 懐中電灯
- [x] 鍵の取得
- [x] ドア操作
- [x] 脱出判定
- [ ] 敵AI
- [ ] 追跡システム
- [ ] 足音・環境音
- [ ] 恐怖イベント
- [ ] セーブ / ロード
- [ ] 複数エンディング

## ライセンス

ライセンスは未設定です。公開前に利用規約・素材のライセンスを確認し、必要なライセンスファイルを追加してください。
