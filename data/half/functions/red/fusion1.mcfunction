execute store result score essence halfheart run clear @s redstone{essence:1b} 0
execute store result score will1 halfheart run data get entity @s SelectedItem.tag.will
execute store result score will2 halfheart run data get entity @s Inventory[{Slot:-106b}].tag.will
scoreboard players operation will1 halfheart += will2 halfheart
scoreboard players operation will1 halfheart *= will1 halfheart

execute if score essence halfheart >= will1 halfheart run function half:red/fusion2
execute if score essence halfheart <= will1 halfheart run tellraw @s {"text": "您身上的勇氣精華數目不夠，或是您手上拿的兩個東西不是意志","color": "red"}
