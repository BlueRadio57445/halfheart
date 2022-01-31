advancement revoke @s only half:red/use_training_egg

execute at @e[tag=training_egg] run summon marker ~ ~ ~ {Tags:["fear_1","random"]}
execute at @e[tag=training_egg] run summon marker ~ ~ ~ {Tags:["fear_2","random"]}
execute at @e[tag=training_egg] run summon marker ~ ~ ~ {Tags:["fear_3","random"]}
execute at @e[tag=training_egg] run summon marker ~ ~ ~ {Tags:["fear_4","random"]}

execute as @e[tag=random,tag=!training_egg,sort=random,limit=1] at @s run function half:red/summon_fear

execute at @e[tag=training_egg] run kill @e[distance=..1,tag=random]