## 常時実行
# data/minecraft/tags/function/tick.jsonで定義された関数
# ここにコマンドを入力する
# 今回は特別な歪んだキノコ付きの棒を右クリックで出る簡易的な魔法を作る

 # キノコ棒使用検知スコアが増えたら関数を実行
  execute as @a if score @s roller_skate.using_stick matches 1.. if predicate roller_skate:magic_wand at @s run function roller_skate:magic_wand/used
  
 # 魔法弾処理
  execute as @e[tag=roller_skate.magic_ball] run function roller_skate:magic_wand/main