scoreboard players set bool halfheart 0
execute store success score bool halfheart if entity @e[type=item,distance=..2,nbt={Item:{tag:{syringe:1b}}},limit=1]
execute if score bool halfheart matches 1 store result score @s absorption run data get entity @s AbsorptionAmount 1

execute if score bool halfheart matches 1 if score @s absorption matches 0 run gamerule showDeathMessages false
execute if score bool halfheart matches 1 if score @s absorption matches 0 run tellraw @a ["",{"selector":"@s"},{"text": " 在抽血的時候，把自己抽乾了"}]
execute if score bool halfheart matches 1 if score @s absorption matches 0 run kill @s
execute if score bool halfheart matches 1 if score @s absorption matches 0 run gamerule showDeathMessages true

execute if score bool halfheart matches 1 run effect clear @s absorption
execute if score bool halfheart matches 1 run function half:gold/gain_gold_essence