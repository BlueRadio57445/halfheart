execute at @e[tag=t1_crafting_table] unless block ~ ~ ~ dropper run summon item ~ ~ ~ {Item:{id:"dropper",Count:1b,tag:{t:1b,type:'crafting_table',display:{Name:'{"text":"銅質工作站","italic": false}'}}}}
execute as @e[tag=t1_crafting_table] at @s unless block ~ ~ ~ dropper run kill @s

#合成表的部分
#鐵質核心
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,id:"minecraft:iron_ingot"},{Count:1b,Slot:3b,tag:{core:1b,t:0b}},{Count:1b,Slot:4b,tag:{core:1b,t:0b}},{Count:1b,Slot:5b,tag:{core:1b,t:0b}},{Count:1b,Slot:7b,id:"minecraft:iron_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"firework_star",tag:{t:1b,core:1b,display:{Name:'{"text":"鐵質核心","italic":false}'},Explosion:{Colors:[I;14737632]},HideFlags:32}}]}
#鐵質機器框架
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:iron_ingot"},{Count:1b,Slot:2b,id:"minecraft:iron_ingot"},{Count:1b,Slot:4b,tag:{frame:1b,t:0b}},{Count:1b,Slot:6b,id:"minecraft:iron_ingot"},{Count:1b,Slot:8b,id:"minecraft:iron_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"iron_block",tag:{t:1b,frame:1b,display:{Name:'{"text":"鐵質機器框架","italic":false}'},Enchantments:[{}]}}]}
#金質核心
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,id:"minecraft:gold_ingot"},{Count:1b,Slot:3b,tag:{core:1b,t:0b}},{Count:1b,Slot:4b,tag:{core:1b,t:0b}},{Count:1b,Slot:5b,tag:{core:1b,t:0b}},{Count:1b,Slot:7b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"firework_star",tag:{t:9b,core:1b,display:{Name:'{"text":"金質核心","italic":false}'},Explosion:{Colors:[I;16578560]},HideFlags:32}}]}
#金質機器框架
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:gold_ingot"},{Count:1b,Slot:2b,id:"minecraft:gold_ingot"},{Count:1b,Slot:4b,tag:{frame:1b,t:0b}},{Count:1b,Slot:6b,id:"minecraft:gold_ingot"},{Count:1b,Slot:8b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"gold_block",tag:{t:9b,frame:1b,display:{Name:'{"text":"金質機器框架","italic":false}'},Enchantments:[{}]}}]}
#鐵質傳輸節點
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,tag:{core:1b,t:9b}},{Count:1b,Slot:4b,tag:{frame:1b,t:1b}},{Count:1b,Slot:6b,id:"minecraft:chain"},{Count:1b,Slot:8b,id:"minecraft:chain"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"gold_block",tag:{}}]}