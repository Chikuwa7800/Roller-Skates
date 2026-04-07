summon marker ~ ~ ~ {Tags:["sample.motion_marker"]}
tag @s add sample.motion_applyed

execute store result score @s sample.motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s sample.motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s sample.motion_z1 run data get entity @s Pos[2] 1000

tp @n[tag=sample.motion_marker] ^ ^ ^0.25

execute store result score @s sample.motion_x2 run data get entity @n[tag=sample.motion_marker] Pos[0] 1000
execute store result score @s sample.motion_y2 run data get entity @n[tag=sample.motion_marker] Pos[1] 1000
execute store result score @s sample.motion_z2 run data get entity @n[tag=sample.motion_marker] Pos[2] 1000

scoreboard players operation @s sample.motion_x2 -= @s sample.motion_x1
scoreboard players operation @s sample.motion_y2 -= @s sample.motion_y1
scoreboard players operation @s sample.motion_z2 -= @s sample.motion_z1

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s sample.motion_x2
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s sample.motion_y2
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s sample.motion_z2

kill @n[tag=sample.motion_marker]