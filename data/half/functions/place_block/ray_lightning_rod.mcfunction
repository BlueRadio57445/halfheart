execute unless entity @s[distance=..7] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run summon lightning_bolt ^ ^ ^1
execute if entity @s[distance=..7] unless block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run summon lightning_bolt ^ ^ ^1.2
execute if entity @s[distance=..7] if block ~ ~ ~ air positioned ^ ^ ^0.005 run function half:place_block/ray_lightning_rod