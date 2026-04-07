## 使用
 # スコアボードリセット
  scoreboard players reset @s sample.using_stick
 # 弾召喚
  execute anchored eyes run summon armor_stand ^ ^ ^1.25 {Tags:["sample.magic_ball"],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
 # モーションでぶっ飛ばす
  execute anchored eyes positioned ^ ^ ^0.001 as @n[tag=sample.magic_ball] run function sample:magic_wand/motion_apply
 # アイテム入れ替え
  item modify entity @s weapon.mainhand sample:pre