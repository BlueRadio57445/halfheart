execute if entity @s[distance=..7] if block ~ ~ ~ dropper align xyz positioned ~0.5 ~0.5 ~0.5 run function half:place_block/effect/effect_t2_crafting_table
execute if entity @s[distance=..7] unless block ~ ~ ~ dropper positioned ^ ^ ^0.1 run function half:place_block/ray/ray_t2_crafting_table