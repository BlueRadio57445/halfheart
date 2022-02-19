execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 0 normal
execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ -1 1 1 0.1 0 normal
execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ 1 1 -1 0.1 0 normal
execute as @e[tag=special_block] at @s run particle minecraft:flame ~ ~ ~ -1 1 -1 0.1 0 normal
execute as @e[tag=special_block] at @s unless block ~ ~ ~ diamond_block run kill @s

#連閃 機器
function half:gold/machine

#連閃 半血
attribute Blue_Radio minecraft:generic.max_health base set 1

#綠血
effect give @a[team=green_heart] poison 1 0 true
effect give @a[team=green_heart] night_vision 13 0 true

execute as @a[team=green_heart] at @s if block ~ ~ ~ powder_snow run effect clear @s poison

#駭霞
#execute at @a run particle totem_of_undying ~ ~0.5 ~ 1.5 0.1 1.5 0.1 10
#execute at @a run effect give @a[distance=..4, team=!green_heart] poison 3 0 false
#execute at @a run particle dust 0 0 0 2 ~ ~0.5 ~ 1.5 0.1 1.5 0.1 10
#execute at @a run effect give @a[distance=..4, team=!green_heart] blindness 3 0 false
#execute at @a run particle minecraft:item cooked_beef ~ ~0.5 ~ 1.5 0.1 1.5 0.1 10
#execute at @a run effect give @a[distance=..4, team=!green_heart] hunger 15 50 false

#黑血
effect give @a[team=black_heart] wither 1 0 true
effect give @a[team=black_heart] fire_resistance 3 0 true

execute as @a[team=black_heart] at @s if block ~ ~ ~ powder_snow run effect clear @s wither

#燚步
#execute at @a run setblock ~ ~ ~ fire[age=5] keep

#真血
effect give @a[team=red_heart] speed 3 0 true
effect give @a[team=red_heart,tag=resistence1] resistance 3 0 true

execute as @a[team=red_heart, scores={half_air=..20}] run advancement grant @s only half:heart/drown_test
execute as @a[team=red_heart, scores={half_air=..20}] run advancement grant @s only half:red/

execute as @a[scores={half_run=32000..}] run give @s minecraft:ender_eye{will:["run"], display:{Name:'{"text":"奔放意志", "italic":false}', Lore:['{"text": "奔放意志","color": "gray","italic": false}']}, Enchantments:[{}]}
scoreboard players reset @a[scores={half_run=32000..}]

#怪怪大補湯
effect give @a[advancements={half:heart/stew_test=true},team=red_heart] resistance 10 1 true

#踏雪意志
execute at @a[scores={snow_will_count=1..}] run setblock ~ ~-1 ~ snow_block keep

#金血
execute as @a[scores={gold_syringe=1..}] at @s run function half:gold/gold_syringe
scoreboard players reset @a gold_syringe

execute at @a[scores={throw_tp1=1..}] as @e[distance=..5,type=item, tag=!stored_tp, nbt={Item:{id:"minecraft:quartz",tag:{tp:1b}}}] run function half:gold/store_tp_crystal
execute at @a[scores={throw_tp2=1..}] as @e[distance=..5,type=item, nbt={Item:{id:"minecraft:amethyst_shard",tag:{tp:1b}}}] run function half:gold/use_tp_crystal
scoreboard players reset @a throw_tp1
scoreboard players reset @a throw_tp2