give @s[scores={absorption=1..}] minecraft:yellow_dye{essence:1b,display:{Name:'{"text":"金血精華","italic":false}',Lore:['{"text":"機器運作所需的能量","color":"gray","italic":false}']}}
scoreboard players remove @s[scores={absorption=1..}] absorption 1
execute if score @s absorption matches 1.. run function half:gold/gain_gold_essence