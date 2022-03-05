execute as @s[tag=!brewing, scores={snow=1..}] run function half:green/brewing_ball/freeze
execute as @s[tag=!brewing, scores={carrot=1..}] run function half:green/brewing_ball/slow
execute as @s[tag=!brewing, scores={poppy_tea=1..}] run function half:green/brewing_ball/lost_ai
execute as @s[tag=!brewing, scores={rotten_flesh=1..}] run function half:green/brewing_ball/hand

tag @s remove brewing
advancement revoke @s only half:green/brewing_ball