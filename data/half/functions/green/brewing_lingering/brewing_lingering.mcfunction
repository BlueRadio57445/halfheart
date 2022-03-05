execute as @s[tag=!brewing, scores={sandwich=1..}] run function half:green/brewing_lingering/hunger
execute as @s[tag=!brewing, scores={berries=1..}] run function half:green/brewing_lingering/harming
execute as @s[tag=!brewing, scores={pufferfish=1..}] run function half:green/brewing_lingering/poison
execute as @s[tag=!brewing, scores={apple=1..}] run function half:green/brewing_lingering/healing

tag @s remove brewing
advancement revoke @s only half:green/brewing_lingering