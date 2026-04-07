## 一回のみ実行
# data/minecraft/tags/function/load.jsonで定義された関数
# ここにコマンドを入力する
# スコア設定
 # キノコ棒を使ったかの検知
  scoreboard objectives add roller_skate.using_stick minecraft.used:warped_fungus_on_a_stick
 # 魔法弾が飛んだ時間
  scoreboard objectives add roller_skate.magic_ball.tick dummy
 # モーション用
  scoreboard objectives add roller_skate.motion_x1 dummy
  scoreboard objectives add roller_skate.motion_x2 dummy
  scoreboard objectives add roller_skate.motion_y1 dummy
  scoreboard objectives add roller_skate.motion_y2 dummy
  scoreboard objectives add roller_skate.motion_z1 dummy
  scoreboard objectives add roller_skate.motion_z2 dummy