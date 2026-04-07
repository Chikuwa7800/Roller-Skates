## 魔法弾
 # スコア増加
  scoreboard players add @s sample.magic_ball.tick 1
 # 演出
  particle witch ~ ~ ~ 0.125 0.125 0.125 0 1
  particle enchant ~ ~ ~ 0.0 0.0 0.0 0 1
 # 何かに当たった？
  execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,type=!#sample:cannot_hurt_entities,tag=!ch_tm_volt_display] positioned ~0.5 ~0.5 ~0.5 run function sample:magic_wand/hit
  execute if entity @s[scores={sample.magic_ball.tick=100..}] run function sample:magic_wand/hit
  execute unless loaded ^ ^ ^2 run kill @s
  execute unless block ^ ^ ^1.5 #sample:no_collision run function sample:magic_wand/hit
