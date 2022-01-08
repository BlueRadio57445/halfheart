#@s是已經衝能的傳送水晶
summon ender_pearl ~ ~ ~ {Tags:["tp_crystal"]}
data modify entity @e[type=ender_pearl, tag=tp_crystal, limit=1] Owner set from entity @s Item.tag.tp_owner
data modify entity @e[type=ender_pearl, tag=tp_crystal, limit=1] Pos set from entity @s Item.tag.tp_pos
kill @s