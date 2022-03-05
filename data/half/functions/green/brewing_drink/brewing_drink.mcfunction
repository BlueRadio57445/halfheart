

execute as @s[tag=!brewing, scores={sandwich=1..}] run function half:green/brewing_drink/hunger
execute as @s[tag=!brewing, scores={berries=1..}] run function half:green/brewing_drink/harming
execute as @s[tag=!brewing, scores={pufferfish=1..}] run function half:green/brewing_drink/poison
execute as @s[tag=!brewing, scores={apple=1..}] run function half:green/brewing_drink/healing

tag @s remove brewing
advancement revoke @s only half:green/brewing_drink