execute at @e[tag=t1_crafting_table] unless block ~ ~ ~ dropper run summon item ~ ~ ~ {Item:{id:"dropper",Count:1b,tag:{t:1b,type:'crafting_table',display:{Name:'{"text":"銅質工作站","italic": false}'},Enchantments:[{}]}}}
execute as @e[tag=t1_crafting_table] at @s unless block ~ ~ ~ dropper run kill @s

execute at @e[tag=t2_crafting_table] unless block ~ ~ ~ dropper run summon item ~ ~ ~ {Item:{id:"dropper",Count:1b,tag:{t:2b,type:'crafting_table',display:{Name:'{"text":"鐵質工作站","italic": false}'},Enchantments:[{}]}}}
execute as @e[tag=t2_crafting_table] at @s unless block ~ ~ ~ dropper run kill @s

execute at @e[tag=t3_crafting_table] unless block ~ ~ ~ dropper run summon item ~ ~ ~ {Item:{id:"dropper",Count:1b,tag:{t:3b,type:'crafting_table',display:{Name:'{"text":"鑽石工作站","italic": false}'},Enchantments:[{}]}}}
execute as @e[tag=t3_crafting_table] at @s unless block ~ ~ ~ dropper run kill @s

execute at @e[tag=crusher] unless block ~ ~ ~ furnace run summon item ~ ~ ~ {Item:{id:"furnace",Count:1b,tag:{crusher:1b,display:{Name:'{"text":"磨粉機","italic":false}'},Enchantments:[{}]}}}
execute as @e[tag=crusher] at @s unless block ~ ~ ~ furnace run kill @s

execute at @e[tag=compressor] unless block ~ ~ ~ smoker run summon item ~ ~ ~ {Item:{id:"smoker",Count:1b,tag:{compressor:1b,display:{Name:'{"text":"壓縮機","italic":false}'},Enchantments:[{}]}}}
execute as @e[tag=compressor] at @s unless block ~ ~ ~ smoker run kill @s

execute at @e[tag=refiner] unless block ~ ~ ~ blast_furnace run summon item ~ ~ ~ {Item:{id:"blast_furnace",Count:1b,tag:{refiner:1b,display:{Name:'{"text":"精煉機","italic":false}'},Enchantments:[{}]}}}
execute as @e[tag=refiner] at @s unless block ~ ~ ~ blast_furnace run kill @s

#合成表的部分
#鐵質核心
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,id:"minecraft:iron_ingot"},{Count:1b,Slot:3b,tag:{core:1b,t:0b}},{Count:1b,Slot:4b,tag:{core:1b,t:0b}},{Count:1b,Slot:5b,tag:{core:1b,t:0b}},{Count:1b,Slot:7b,id:"minecraft:iron_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"firework_star",tag:{t:1b,core:1b,display:{Name:'{"text":"鐵質核心","italic":false}'},Explosion:{Colors:[I;14737632]},HideFlags:32}}]}
#鐵質機器框架
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:iron_ingot"},{Count:1b,Slot:2b,id:"minecraft:iron_ingot"},{Count:1b,Slot:4b,tag:{frame:1b,t:0b}},{Count:1b,Slot:6b,id:"minecraft:iron_ingot"},{Count:1b,Slot:8b,id:"minecraft:iron_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"iron_block",tag:{t:1b,frame:1b,display:{Name:'{"text":"鐵質機器框架","italic":false}'},Enchantments:[{}]}}]}
#金質核心
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,id:"minecraft:gold_ingot"},{Count:1b,Slot:3b,tag:{core:1b,t:0b}},{Count:1b,Slot:4b,tag:{core:1b,t:0b}},{Count:1b,Slot:5b,tag:{core:1b,t:0b}},{Count:1b,Slot:7b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"firework_star",tag:{t:9b,core:1b,display:{Name:'{"text":"金質核心","italic":false}'},Explosion:{Colors:[I;16578560]},HideFlags:32}}]}
#金質機器框架
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:gold_ingot"},{Count:1b,Slot:2b,id:"minecraft:gold_ingot"},{Count:1b,Slot:4b,tag:{frame:1b,t:0b}},{Count:1b,Slot:6b,id:"minecraft:gold_ingot"},{Count:1b,Slot:8b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"gold_block",tag:{t:9b,frame:1b,display:{Name:'{"text":"金質機器框架","italic":false}'},Enchantments:[{}]}}]}
#金血針筒
execute at @e[tag=t1_crafting_table] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:2b,id:"minecraft:blaze_rod"},{Count:1b,Slot:4b,id:"minecraft:glass"},{Count:1b,Slot:6b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,Count:1b,id:"spectral_arrow",tag:{syringe:1b,display:{Name:'{"text":"金血針筒","italic":false}',Lore:['{"text":"用以提取金血","italic":false,"color":"gray"}','{"text":"按Q使用","italic":false,"color":"gray"}']}}}]}