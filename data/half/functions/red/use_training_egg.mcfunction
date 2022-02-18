advancement revoke @s only half:red/use_training_egg
scoreboard players add @s use_training 1
execute as @s[scores={use_training=3..,red_level=0}] run scoreboard players add @s red_level 1
execute as @s[scores={use_training=20..}] run scoreboard players add @s red_level 1
execute as @s[scores={use_training=20..}] run scoreboard players reset @s use_training

execute at @e[tag=training_egg] as @s[scores={red_level=0..2}] run summon marker ~ ~ ~ {Tags:["fear_0-1","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=0..2}] run summon marker ~ ~ ~ {Tags:["fear_0-2","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=0..2}] run summon marker ~ ~ ~ {Tags:["fear_0-3","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=0..2}] run summon marker ~ ~ ~ {Tags:["fear_0-4","random"]}

execute at @e[tag=training_egg] as @s[scores={red_level=1..}] run summon marker ~ ~ ~ {Tags:["fear_1-1","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=1..}] run summon marker ~ ~ ~ {Tags:["fear_1-2","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=1..}] run summon marker ~ ~ ~ {Tags:["fear_1-3","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=1..}] run summon marker ~ ~ ~ {Tags:["fear_1-4","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=1..}] run summon marker ~ ~ ~ {Tags:["fear_1-5","random"]}

execute at @e[tag=training_egg] as @s[scores={red_level=2..}] run summon marker ~ ~ ~ {Tags:["fear_2-1","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=2..}] run summon marker ~ ~ ~ {Tags:["fear_2-2","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=2..}] run summon marker ~ ~ ~ {Tags:["fear_2-3","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=2..}] run summon marker ~ ~ ~ {Tags:["fear_2-4","random"]}

execute at @e[tag=training_egg] as @s[scores={red_level=3..}] run summon marker ~ ~ ~ {Tags:["fear_3-1","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=3..}] run summon marker ~ ~ ~ {Tags:["fear_3-2","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=3..}] run summon marker ~ ~ ~ {Tags:["fear_3-3","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=3..}] run summon marker ~ ~ ~ {Tags:["fear_3-4","random"]}

execute at @e[tag=training_egg] as @s[scores={red_level=4..}] run summon marker ~ ~ ~ {Tags:["fear_4-1","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=4..}] run summon marker ~ ~ ~ {Tags:["fear_4-2","random"]}
execute at @e[tag=training_egg] as @s[scores={red_level=4..}] run summon marker ~ ~ ~ {Tags:["fear_4-3","random"]}

execute as @e[tag=random,tag=!training_egg,sort=random,limit=1] at @s run function half:red/summon_fear

execute at @e[tag=training_egg] run kill @e[distance=..1,tag=random]