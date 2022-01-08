execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 0 normal
execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ -1 1 1 0.1 0 normal
execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ 1 1 -1 0.1 0 normal
execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ -1 1 -1 0.1 0 normal
execute as @e[tag=special_block] at @s unless block ~ ~ ~ diamond_block run kill @s

execute as @e[tag=life_crystal] at @s run particle happy_villager ~ ~ ~ 1 1 1 0.1 1

#綠血
effect give @a[team=green_heart] poison 1 0 true
effect give @a[team=green_heart] night_vision 3 0 true

execute as @a[team=green_heart] at @s if block ~ ~ ~ powder_snow run effect clear @s poison

#黑血
effect give @a[team=black_heart] wither 1 0 true
effect give @a[team=black_heart] fire_resistance 3 0 true

execute as @a[team=black_heart] at @s if block ~ ~ ~ powder_snow run effect clear @s wither

#真血
effect give @a[team=red_heart] speed 3 0 true
effect give @a[team=red_heart,tag=resistence1] resistance 3 0 true

execute as @a[team=red_heart, scores={half_air=..20}] run advancement grant @s only half:heart/drown_test
effect give @a[advancements={half:heart/drown_test=true}] water_breathing 1 0 true

#金血
effect give @a[team=gold_heart] absorption 1 0 true

execute at @a[scores={throw_tp1=1..}] as @e[distance=..5,type=item, tag=!stored_tp, nbt={Item:{id:"minecraft:quartz",tag:{tp:1b}}}] run function half:gold/store_tp_crystal
execute at @a[scores={throw_tp2=1..}] as @e[distance=..5,type=item, nbt={Item:{id:"minecraft:amethyst_shard",tag:{tp:1b}}}] run function half:gold/use_tp_crystal
scoreboard players reset @a throw_tp1
scoreboard players reset @a throw_tp2