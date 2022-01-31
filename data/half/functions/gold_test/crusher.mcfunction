execute at @s store result block ~ ~ ~ CookTime short 1 run scoreboard players add @s progress 1
scoreboard players remove @s gold_energy 1

execute if score @s progress matches 200.. run scoreboard players set @s progress 0