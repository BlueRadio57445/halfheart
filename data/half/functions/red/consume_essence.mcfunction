clear @s redstone{essence:1b} 1
scoreboard players remove will1 halfheart 1
execute if score will1 halfheart matches 1.. run function half:red/consume_essence