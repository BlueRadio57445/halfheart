advancement revoke @s only half:green/freeze_ball

#還沒弄「剛撿到物品的實體」
#非玩家
effect give @e[nbt={HandItems:[{tag:{touch:["freeze"]}}]}, distance=..10] slowness 100 255
execute at @e[nbt={HandItems:[{tag:{touch:["freeze"]}}]}, distance=..10] run setblock ~ ~ ~ powder_snow


#玩家

say shoule be freeze