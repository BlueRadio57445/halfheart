

execute as @s[tag=!brewing, scores={sandwich=1..}] run function half:green/brewing_splash/hunger
execute as @s[tag=!brewing, scores={berries=1..}] run function half:green/brewing_splash/harming
execute as @s[tag=!brewing, scores={pufferfish=1..}] run function half:green/brewing_splash/poison
execute as @s[tag=!brewing, scores={apple=1..}] run function half:green/brewing_splash/healing

tag @s remove brewing
advancement revoke @s only half:green/brewing_splash